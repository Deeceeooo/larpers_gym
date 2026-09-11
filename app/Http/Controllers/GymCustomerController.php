<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class GymCustomerController extends Controller
{
    public function index()
    {
        $customers = DB::table('gym_customers')
            ->leftJoin('gym_orders', 'gym_customers.id', '=', 'gym_orders.gym_customer_id')
            ->select(
                'gym_customers.id',
                'gym_customers.name',
                'gym_customers.email',
                'gym_customers.phone',
                'gym_customers.address',
                'gym_customers.created_at',
                'gym_customers.updated_at',
                DB::raw('COUNT(gym_orders.id) as orders_count'),
                DB::raw('COALESCE(SUM(gym_orders.total_amount), 0) as total_spent')
            )
            ->groupBy(
                'gym_customers.id',
                'gym_customers.name',
                'gym_customers.email',
                'gym_customers.phone',
                'gym_customers.address',
                'gym_customers.created_at',
                'gym_customers.updated_at'
            )
            ->orderBy('gym_customers.created_at', 'desc')
            ->get();

        $orders = DB::table('gym_orders')
            ->select('id', 'gym_customer_id', 'order_number', 'status', 'total_amount', 'created_at')
            ->orderBy('created_at', 'desc')
            ->get()
            ->groupBy('gym_customer_id');

        return view('pages.shop.customers', compact('customers', 'orders'));
    }

    public function update(Request $request, $id)
    {
        $customer = DB::table('gym_customers')->where('id', $id)->first();

        abort_unless($customer, 404);

        $validated = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'email', 'max:255', Rule::unique('gym_customers', 'email')->ignore($id)],
            'phone' => ['nullable', 'string', 'max:50'],
            'address' => ['nullable', 'string', 'max:1000'],
        ]);

        DB::table('gym_customers')->where('id', $id)->update([
            ...$validated,
            'updated_at' => now(),
        ]);

        return redirect('/gym-customers')->with('success', 'Customer information updated successfully.');
    }
}
