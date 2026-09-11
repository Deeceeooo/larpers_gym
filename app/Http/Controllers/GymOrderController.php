<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class GymOrderController extends Controller
{
    public function index()
    {
        $orders = DB::table('gym_orders')
            ->join('gym_customers', 'gym_orders.gym_customer_id', '=', 'gym_customers.id')
            ->select('gym_orders.*', 'gym_customers.name as customer_name', 'gym_customers.email as customer_email')
            ->orderBy('gym_orders.created_at', 'desc')
            ->get();

        $items = DB::table('gym_order_items')
            ->orderBy('id')
            ->get()
            ->groupBy('gym_order_id');

        return view('pages.shop.orders', compact('orders', 'items'));
    }

    public function do_delete($id)
    {
        DB::table('gym_orders')->where('id', $id)->delete();

        return redirect(url('/gym-orders'))->with('success', 'Customer order deleted!');
    }
}
