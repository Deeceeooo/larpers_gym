@extends('layouts.app')

@section('content')

@if(Session::has('success'))
    <p class="alert alert-success">{{ Session::get('success') }}</p>
@endif

<x-page-header pagetitle="Manage Gym Shop Orders" class="bg-info"/>

<div class="wrapper wrapper-content">
    <div class="animated fadeInRightBig">
        <div class="gym-action-bar">
            <div>
                <p class="gym-kicker">Order Control</p>
                <p class="gym-page-note">Track purchases, product items, status, totals, and order dates.</p>
            </div>
        </div>

        <div class="ibox">
            <div class="ibox-content">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Order No.</th>
                                <th>Customer</th>
                                <th>Products</th>
                                <th>Status</th>
                                <th>Total</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($orders as $order)
                                <tr>
                                    <td>{{ $order->order_number }}</td>
                                    <td>
                                        {{ $order->customer_name }}<br>
                                        <small class="text-muted">{{ $order->customer_email }}</small>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#orderItemsModal{{ $order->id }}">
                                            <i class="fa fa-eye"></i> View Products
                                        </button>
                                    </td>
                                    <td>
                                        <span class="badge badge-{{ $order->status == 'completed' ? 'success' : ($order->status == 'cancelled' ? 'danger' : 'warning') }}">
                                            {{ ucfirst($order->status) }}
                                        </span>
                                    </td>
                                    <td>PHP {{ number_format($order->total_amount, 2) }}</td>
                                    <td>{{ date('M d, Y', strtotime($order->created_at)) }}</td>
                                    <td>
                                        <a href="{{ url('/delete-gym-order/'.$order->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Delete this customer order?')"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="7" class="text-center">No orders found. Run the gym shop seeder to add sample orders.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@foreach($orders as $order)
    <div class="modal fade" id="orderItemsModal{{ $order->id }}" tabindex="-1" role="dialog" aria-labelledby="orderItemsModalLabel{{ $order->id }}" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="orderItemsModalLabel{{ $order->id }}">Ordered Products - {{ $order->order_number }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>
                        <strong>Customer:</strong> {{ $order->customer_name }}<br>
                        <strong>Email:</strong> {{ $order->customer_email }}
                    </p>

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Option</th>
                                    <th>Quantity</th>
                                    <th>Unit Price</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($items[$order->id] ?? [] as $item)
                                    <tr>
                                        <td>{{ $item->product_name }}</td>
                                        <td>{{ $item->option_name }}</td>
                                        <td>{{ $item->quantity }}</td>
                                        <td>PHP {{ number_format($item->unit_price, 2) }}</td>
                                        <td>PHP {{ number_format($item->subtotal, 2) }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="4" class="text-right">Total</th>
                                    <th>PHP {{ number_format($order->total_amount, 2) }}</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endforeach

@endsection
