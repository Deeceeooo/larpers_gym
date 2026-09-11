<?php

namespace Database\Seeders;

use App\Models\GymCustomer;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GymShopSeeder extends Seeder
{
    public function run(): void
    {
        $this->createSampleProductsWhenEmpty();

        GymCustomer::factory(rand(5, 8))->create()->each(function ($customer) {
            for ($i = 0; $i < rand(2, 3); $i++) {
                $orderId = DB::table('gym_orders')->insertGetId([
                    'gym_customer_id' => $customer->id,
                    'order_number' => 'GYM-' . now()->format('YmdHis') . '-' . $customer->id . '-' . ($i + 1),
                    'status' => fake()->randomElement(['pending', 'processing', 'completed']),
                    'total_amount' => 0,
                    'created_at' => now()->subDays(rand(0, 20)),
                    'updated_at' => now(),
                ]);

                $total = $this->createOrderItems($orderId);

                DB::table('gym_orders')->where('id', $orderId)->update([
                    'total_amount' => $total,
                    'updated_at' => now(),
                ]);
            }
        });
    }

    private function createSampleProductsWhenEmpty(): void
    {
        if (DB::table('gym_products')->count() > 0) {
            return;
        }

        $products = [
            [
                'name' => 'Adjustable Dumbbell',
                'description' => 'Compact dumbbell for home strength training.',
                'category' => 'equipment',
                'options' => [
                    ['name' => '10kg', 'price' => 1200],
                    ['name' => '20kg', 'price' => 2200],
                    ['name' => '30kg', 'price' => 3200],
                ],
            ],
            [
                'name' => 'Resistance Band Set',
                'description' => 'Bands for mobility, warmups, and full-body workouts.',
                'category' => 'equipment',
                'options' => [
                    ['name' => 'Light', 'price' => 350],
                    ['name' => 'Medium', 'price' => 450],
                    ['name' => 'Heavy', 'price' => 550],
                ],
            ],
            [
                'name' => 'Whey Protein',
                'description' => 'Protein powder for post-workout recovery.',
                'category' => 'supplement',
                'options' => [
                    ['name' => 'Chocolate 2lb', 'price' => 1450],
                    ['name' => 'Vanilla 2lb', 'price' => 1450],
                    ['name' => 'Cookies 5lb', 'price' => 3100],
                ],
            ],
            [
                'name' => 'Creatine Monohydrate',
                'description' => 'Daily creatine supplement for strength performance.',
                'category' => 'supplement',
                'options' => [
                    ['name' => 'Unflavored 300g', 'price' => 850],
                    ['name' => 'Lemon 300g', 'price' => 900],
                ],
            ],
        ];

        foreach ($products as $product) {
            $productId = DB::table('gym_products')->insertGetId([
                'name' => $product['name'],
                'description' => $product['description'],
                'category' => $product['category'],
                'photo' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            foreach ($product['options'] as $option) {
                DB::table('gym_product_options')->insert([
                    'gym_product_id' => $productId,
                    'name' => $option['name'],
                    'price' => $option['price'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }

    private function createOrderItems(int $orderId): float
    {
        $options = DB::table('gym_product_options')
            ->join('gym_products', 'gym_product_options.gym_product_id', '=', 'gym_products.id')
            ->select(
                'gym_product_options.id as option_id',
                'gym_product_options.name as option_name',
                'gym_product_options.price',
                'gym_products.id as product_id',
                'gym_products.name as product_name'
            )
            ->inRandomOrder()
            ->limit(rand(1, 3))
            ->get();

        $total = 0;

        foreach ($options as $option) {
            $quantity = rand(1, 3);
            $subtotal = $option->price * $quantity;
            $total += $subtotal;

            DB::table('gym_order_items')->insert([
                'gym_order_id' => $orderId,
                'gym_product_id' => $option->product_id,
                'gym_product_option_id' => $option->option_id,
                'product_name' => $option->product_name,
                'option_name' => $option->option_name,
                'unit_price' => $option->price,
                'quantity' => $quantity,
                'subtotal' => $subtotal,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        return $total;
    }
}
