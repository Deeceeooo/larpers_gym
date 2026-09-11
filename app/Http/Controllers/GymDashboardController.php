<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class GymDashboardController extends Controller
{
    public function index()
    {
        $totalCustomers = DB::table('gym_customers')->count();
        $totalProducts = DB::table('gym_products')->count();
        $totalOrders = DB::table('gym_orders')->count();
        $totalSales = DB::table('gym_orders')
            ->where('status', 'completed')
            ->sum('total_amount');

        $equipmentCount = DB::table('gym_products')->where('category', 'equipment')->count();
        $supplementCount = DB::table('gym_products')->where('category', 'supplement')->count();

        $orderStatuses = DB::table('gym_orders')
            ->select('status', DB::raw('COUNT(*) as total'))
            ->groupBy('status')
            ->pluck('total', 'status');

        $months = collect(range(5, 0))->map(function ($monthsAgo) {
            $date = now()->startOfMonth()->subMonths($monthsAgo);

            return [
                'label' => $date->format('M Y'),
                'start' => $date->copy()->startOfMonth(),
                'end' => $date->copy()->endOfMonth(),
            ];
        });

        $chartLabels = $months->pluck('label');
        $customerChartData = $months->map(function ($month) {
            return DB::table('gym_customers')
                ->whereBetween('created_at', [$month['start'], $month['end']])
                ->count();
        });
        $productChartData = $months->map(function ($month) {
            return DB::table('gym_products')
                ->whereBetween('created_at', [$month['start'], $month['end']])
                ->count();
        });

        $recentProducts = DB::table('gym_products')
            ->orderBy('created_at', 'desc')
            ->limit(5)
            ->get();

        $recentCustomers = DB::table('gym_customers')
            ->orderBy('created_at', 'desc')
            ->limit(5)
            ->get();

        return view('pages.shop.gym_dashboard', compact(
            'totalCustomers',
            'totalProducts',
            'totalOrders',
            'totalSales',
            'equipmentCount',
            'supplementCount',
            'orderStatuses',
            'chartLabels',
            'customerChartData',
            'productChartData',
            'recentProducts',
            'recentCustomers'
        ));
    }
}
