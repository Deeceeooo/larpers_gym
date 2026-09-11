# Gym Shop Codebase Guide

## Purpose and scope

The Gym Shop is an **admin-facing inventory and reporting module** inside this Laravel application. It lets an authenticated administrator:

- add, view, edit, and delete gym products;
- give each product one or more priced options (for example, `10kg` or `Chocolate 2lb`);
- view registered customers and their accumulated order totals;
- view order headers and their line items; and
- see dashboard counts, charts, and recent records.

It is not currently a customer storefront or checkout system. Customer registration is available, but there are no customer login, cart, checkout, or order-creation routes. The provided `GymShopSeeder` creates sample products, customers, orders, and order items for the admin views.

## Main request flow

All Gym Shop admin URLs are inside the `admin.auth` middleware group in `routes/web.php`. The middleware checks the `admin_logged_in` session value; unauthenticated visitors are redirected to `/login`.

```text
Browser
  -> route in routes/web.php
  -> controller method
  -> Query Builder query / transaction
  -> MySQL database tables
  -> Blade view in resources/views/
  -> rendered admin page
```

The module mostly uses Laravel's `DB::table(...)` Query Builder instead of Eloquent models. `GymCustomer` is the only Gym Shop model currently used, and it is used by the database seeder to generate customers.

## Routes, controllers, and views

| URL | Controller action | View / result | Database behavior |
| --- | --- | --- | --- |
| `GET /gym-dashboard` | `GymDashboardController@index` | `pages.shop.gym_dashboard` | Counts and aggregates products, customers, and orders. |
| `GET /p3` | `GymProductController@index` | `pages.page3` | Gets all products and groups their options by product ID. |
| `GET /gym-product-form` | `GymProductController@show_add_form` | `pages.shop.add_product` | Shows the new-product form. |
| `POST /add-gym-product` | `GymProductController@do_add` | Redirects to `/p3` | Inserts one product and its option rows in a transaction. |
| `GET /edit-gym-product/{id}` | `GymProductController@show_edit_form` | `pages.shop.edit_product` | Reads one product and its options; returns 404 if absent. |
| `POST /update-gym-product` | `GymProductController@do_update` | Redirects to `/p3` | Updates the product, replaces all option rows in a transaction. |
| `GET /delete-gym-product/{id}` | `GymProductController@do_delete` | Redirects to `/p3` | Deletes the product; its options cascade-delete. |
| `GET /gym-customers` | `GymCustomerController@index` | `pages.shop.customers` | Joins customers with orders to calculate order count and total spend. |
| `GET /gym-orders` | `GymOrderController@index` | `pages.shop.orders` | Joins orders to customers and groups all order items by order ID. |
| `GET /delete-gym-order/{id}` | `GymOrderController@do_delete` | Redirects to `/gym-orders` | Deletes an order; its order items cascade-delete. |
| `GET /customer-register` | `AuthController@showCustomerRegister` | `auth.customer_register` | Shows public customer registration. |
| `POST /customer-register` | `AuthController@customerRegister` | Redirects to `/login` | Validates and inserts a customer with a hashed password. |

## Product behavior

### Add product

`resources/views/pages/shop/add_product.blade.php` posts to `/add-gym-product` with:

- `category`: `equipment` or `supplement`;
- `name` and optional `description`;
- optional `photo` image; and
- matching arrays: `option_name[]` and `option_price[]`.

The browser-side JavaScript changes the option label and placeholder based on category:

- equipment: **Sizes / Weights** such as `10kg` or `Large`;
- supplement: **Types / Flavors** such as `Chocolate` or `Vanilla`.

This is a display aid only. Both categories are stored identically in `gym_product_options`.

`GymProductController@do_add` validates all fields. It optionally stores the uploaded file in `_uploads/` using a timestamp-prefixed filename. It then starts a database transaction:

1. Insert the main record into `gym_products`.
2. Receive the new product ID.
3. Insert every submitted name/price pair into `gym_product_options` using that product ID.
4. Commit both steps together; an error rolls both back.

The product list (`pages.page3`) loads all products and all options, then groups options by `gym_product_id` so each product card can show only its own options.

### Update product

The edit page sends its product `id`, `old_photo`, product fields, and option arrays to `/update-gym-product`.

The controller keeps the old filename unless a new valid image is uploaded. Inside one transaction, it updates the product, deletes every existing option for that product, and inserts the submitted option list as new rows. Therefore, option IDs are not preserved after an update.

### Delete product

Deleting a product deletes its `gym_product_options` records automatically because the foreign key uses `cascadeOnDelete()`.

If the product was referenced by an existing `gym_order_items` record, `gym_order_items.gym_product_id` and `gym_product_option_id` become `NULL` because those foreign keys use `nullOnDelete()`. The saved `product_name`, `option_name`, `unit_price`, and `subtotal` snapshot fields stay intact, so historical order displays still work.

## Database design

```text
gym_customers (1) ----< gym_orders (1) ----< gym_order_items
                                      >---- (0..1) gym_products
                                      >---- (0..1) gym_product_options

gym_products  (1) ----< gym_product_options
```

`1 ----<` means one record can have many related records. The two item-to-product links are optional (`0..1`) because historic items remain after a product or option is deleted.

### `gym_products`

The inventory parent record.

| Column | Type / rule | Meaning |
| --- | --- | --- |
| `id` | primary key | Product identifier. |
| `name` | string | Product name. |
| `description` | nullable long text | Product details. |
| `category` | enum | Either `equipment` or `supplement`. |
| `photo` | nullable string | Filename stored in `_uploads/`, not the image binary. |
| `created_at`, `updated_at` | timestamps | Record dates. |

### `gym_product_options`

The purchasable variants and their individual prices.

| Column | Type / rule | Meaning |
| --- | --- | --- |
| `id` | primary key | Option identifier. |
| `gym_product_id` | foreign key, cascade delete | Parent product. |
| `name` | string | Size, weight, flavor, type, etc. |
| `price` | decimal(10,2) | Price for this option. |
| timestamps | timestamps | Record dates. |

### `gym_customers`

Customers are created through `/customer-register` or by the factory in the seed process.

| Column | Type / rule | Meaning |
| --- | --- | --- |
| `id` | primary key | Customer identifier. |
| `name` | string | Customer name. |
| `email` | unique string | Customer email; registration rejects duplicates. |
| `phone`, `address` | nullable | Contact information. |
| `password` | nullable string | A hash is saved during registration. |
| timestamps | timestamps | Record dates. |

### `gym_orders`

The order header.

| Column | Type / rule | Meaning |
| --- | --- | --- |
| `id` | primary key | Order identifier. |
| `gym_customer_id` | foreign key, cascade delete | Customer who owns the order. |
| `order_number` | unique string | Human-readable order number. |
| `status` | enum | `pending`, `processing`, `completed`, or `cancelled`. |
| `total_amount` | decimal(10,2) | Saved order total. |
| timestamps | timestamps | Record dates. |

### `gym_order_items`

The individual product/option rows belonging to an order.

| Column | Type / rule | Meaning |
| --- | --- | --- |
| `gym_order_id` | foreign key, cascade delete | Parent order. |
| `gym_product_id` | nullable FK, set null on delete | Original product reference. |
| `gym_product_option_id` | nullable FK, set null on delete | Original option reference. |
| `product_name`, `option_name` | strings | Snapshot names used for order history. |
| `unit_price` | decimal(10,2) | Price at time of ordering. |
| `quantity` | integer | Units purchased. |
| `subtotal` | decimal(10,2) | `unit_price × quantity`. |
| timestamps | timestamps | Record dates. |

## Orders and reporting behavior

There is no current controller action that accepts a checkout and creates an order. `database/seeders/GymShopSeeder.php` is the code that currently creates sample orders:

1. It adds default products and options only when `gym_products` is empty.
2. It creates 5–8 fake `GymCustomer` records.
3. It creates 2–3 orders per new customer with a random status.
4. For each order, it randomly selects existing product options, saves order-item snapshot data, calculates each subtotal, then updates `gym_orders.total_amount` with their sum.

The order management page reads the order header joined to its customer. It separately reads all items and groups them by `gym_order_id`; each row's **View Products** modal uses that grouped collection.

The customer management page uses a left join from customers to orders. This keeps customers with no orders in the list, with `orders_count = 0` and `total_spent = 0`.

The Gym Dashboard calculates:

- customer, product, and order counts;
- sales as the sum of `total_amount` for only `completed` orders;
- counts by product category and order status;
- customer/product creation counts for the last six calendar months; and
- five most recent products and customers.

## Authentication and layout

`AuthController` contains a fixed admin credential check (`admin@gymshop.com` / `admin123`) and stores the successful admin state in the session. `AdminAuth` protects the shop administration routes and adds no-cache response headers.

The shared `resources/views/layouts/app.blade.php` layout provides the Gym Shop navigation. It conditionally loads `public/css/gym-shop.css` and adds the `gym-shop-theme` body class for the shop routes.

## Important implementation notes

- Image files are not removed from `_uploads/` when a product is updated with another image or deleted, so unused files can accumulate.
- Product and order deletion use `GET` routes. In a production application, use `DELETE` routes with a form, CSRF token, and authorization checks instead.
- The customer registration password is safely hashed, but customer authentication is not implemented; the existing login is admin-only.
- Order totals are stored values. The code does not recompute existing order totals if product prices later change, which is appropriate for preserving historical prices.
- The database protects key relationships through foreign keys, cascade deletion, and nullable historical references. The product create/update operations also use transactions to avoid partial product-option saves.

## Key files

- `routes/web.php` — HTTP route definitions and admin protection.
- `app/Http/Controllers/GymProductController.php` — product CRUD, validation, uploads, and option persistence.
- `app/Http/Controllers/GymCustomerController.php` — customer ledger query.
- `app/Http/Controllers/GymOrderController.php` — order listing and deletion.
- `app/Http/Controllers/GymDashboardController.php` — dashboard aggregates and chart data.
- `database/migrations/2026_09_05_000001_create_gym_products_table.php` through `2026_09_05_000005_create_gym_order_items_table.php` — database schema.
- `database/seeders/GymShopSeeder.php` — sample shop data and order generation.
- `resources/views/pages/shop/` and `resources/views/pages/page3.blade.php` — the admin interface.
