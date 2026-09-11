@extends('layouts.app')

@section('content')

<x-page-header pagetitle="Dashboard" class="bg-info"/>

<div class="wrapper wrapper-content">
    <div class="animated fadeInRightBig">
        <div class="gym-action-bar">
            <div>
                <p class="gym-kicker">Performance Board</p>
                <p class="gym-page-note">Minimal metrics for customers, products, orders, and completed sales.</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>Total Customers</h5>
                        <h2 class="no-margins">{{ number_format($totalCustomers) }}</h2>
                        <small>Registered gym shop customers</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>Total Products</h5>
                        <h2 class="no-margins">{{ number_format($totalProducts) }}</h2>
                        <small>Equipment and supplements</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>Total Orders</h5>
                        <h2 class="no-margins">{{ number_format($totalOrders) }}</h2>
                        <small>All customer orders</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>Completed Sales</h5>
                        <h2 class="no-margins">PHP {{ number_format($totalSales, 2) }}</h2>
                        <small>Revenue from completed orders</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Customers and Products Added</h5>
                    </div>
                    <div class="ibox-content">
                        <canvas id="gymGrowthChart" height="120"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Shop Summary</h5>
                    </div>
                    <div class="ibox-content">
                        <table class="table table-striped">
                            <tbody>
                                <tr>
                                    <td>Equipment Products</td>
                                    <td class="text-right"><strong>{{ number_format($equipmentCount) }}</strong></td>
                                </tr>
                                <tr>
                                    <td>Supplement Products</td>
                                    <td class="text-right"><strong>{{ number_format($supplementCount) }}</strong></td>
                                </tr>
                                <tr>
                                    <td>Pending Orders</td>
                                    <td class="text-right"><strong>{{ number_format($orderStatuses['pending'] ?? 0) }}</strong></td>
                                </tr>
                                <tr>
                                    <td>Processing Orders</td>
                                    <td class="text-right"><strong>{{ number_format($orderStatuses['processing'] ?? 0) }}</strong></td>
                                </tr>
                                <tr>
                                    <td>Completed Orders</td>
                                    <td class="text-right"><strong>{{ number_format($orderStatuses['completed'] ?? 0) }}</strong></td>
                                </tr>
                                <tr>
                                    <td>Cancelled Orders</td>
                                    <td class="text-right"><strong>{{ number_format($orderStatuses['cancelled'] ?? 0) }}</strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Latest Products</h5>
                    </div>
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Date Added</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($recentProducts as $product)
                                        <tr>
                                            <td>{{ $product->name }}</td>
                                            <td>
                                                <span class="badge badge-{{ $product->category == 'equipment' ? 'primary' : 'success' }}">
                                                    {{ ucfirst($product->category) }}
                                                </span>
                                            </td>
                                            <td>{{ date('M d, Y', strtotime($product->created_at)) }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3" class="text-center">No products yet.</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Latest Customers</h5>
                    </div>
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Date Joined</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($recentCustomers as $customer)
                                        <tr>
                                            <td>{{ $customer->name }}</td>
                                            <td>{{ $customer->email }}</td>
                                            <td>{{ date('M d, Y', strtotime($customer->created_at)) }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3" class="text-center">No customers yet.</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('js/plugins/chartJs/Chart.min.js') }}"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var chartCanvas = document.getElementById('gymGrowthChart');

        if (!chartCanvas) {
            return;
        }

        new Chart(chartCanvas, {
            type: 'bar',
            data: {
                labels: @json($chartLabels),
                datasets: [
                    {
                        label: 'Customers',
                        backgroundColor: 'rgba(219, 31, 31, 0.85)',
                        borderColor: 'rgba(219, 31, 31, 1)',
                        borderWidth: 1,
                        data: @json($customerChartData)
                    },
                    {
                        label: 'Products',
                        backgroundColor: 'rgba(255, 180, 40, 0.9)',
                        borderColor: 'rgba(255, 122, 24, 1)',
                        borderWidth: 1,
                        data: @json($productChartData)
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: {
                    position: 'bottom',
                    labels: {
                        fontColor: '#111111'
                    }
                },
                scales: {
                    yAxes: [{
                        gridLines: {
                            color: 'rgba(17, 17, 17, 0.12)'
                        },
                        ticks: {
                            beginAtZero: true,
                            precision: 0,
                            fontColor: '#111111'
                        }
                    }],
                    xAxes: [{
                        gridLines: {
                            color: 'rgba(17, 17, 17, 0.08)'
                        },
                        ticks: {
                            fontColor: '#111111'
                        }
                    }]
                }
            }
        });
    });
</script>

@endsection
