@extends('layouts.app')

@section('content')

@if(Session::has('success'))
    <p class="alert alert-success">{{ Session::get('success') }}</p>
@endif

@if($errors->any())
    <div class="alert alert-danger">
        <ul class="mb-0">
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<x-page-header pagetitle="Manage Gym Shop Customers" class="bg-info"/>

<div class="wrapper wrapper-content">
    <div class="animated fadeInRightBig">
        <div class="gym-action-bar">
            <div>
                <p class="gym-kicker">Customer Ledger</p>
                <p class="gym-page-note">A focused view of buyers, order count, and lifetime spend.</p>
            </div>
        </div>

        <div class="ibox">
            <div class="ibox-content">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Orders</th>
                                <th>Total Spent</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($customers as $customer)
                                <tr>
                                    <td>{{ $customer->name }}</td>
                                    <td>{{ $customer->email }}</td>
                                    <td>{{ $customer->phone }}</td>
                                    <td>{{ $customer->address }}</td>
                                    <td>{{ $customer->orders_count }}</td>
                                    <td>PHP {{ number_format($customer->total_spent, 2) }}</td>
                                    <td class="text-nowrap">
                                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#viewCustomerModal{{ $customer->id }}">
                                            <i class="fa fa-eye"></i> View
                                        </button>
                                        <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editCustomerModal{{ $customer->id }}">
                                            <i class="fa fa-pencil"></i> Edit
                                        </button>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="7" class="text-center">No customers found. Run the gym shop seeder to add sample customers.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@foreach($customers as $customer)
    <div class="modal fade" id="viewCustomerModal{{ $customer->id }}" tabindex="-1" role="dialog" aria-labelledby="viewCustomerModalLabel{{ $customer->id }}" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="viewCustomerModalLabel{{ $customer->id }}">Customer Details</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6"><p><strong>Name:</strong><br>{{ $customer->name }}</p></div>
                        <div class="col-sm-6"><p><strong>Email:</strong><br>{{ $customer->email }}</p></div>
                        <div class="col-sm-6"><p><strong>Phone:</strong><br>{{ $customer->phone ?: 'Not provided' }}</p></div>
                        <div class="col-sm-6"><p><strong>Registered:</strong><br>{{ \Carbon\Carbon::parse($customer->created_at)->format('M d, Y h:i A') }}</p></div>
                        <div class="col-sm-12"><p><strong>Address:</strong><br>{{ $customer->address ?: 'Not provided' }}</p></div>
                        <div class="col-sm-12"><p><strong>Last Updated:</strong><br>{{ \Carbon\Carbon::parse($customer->updated_at)->format('M d, Y h:i A') }}</p></div>
                    </div>

                    <hr>
                    <h4>Order Logs <small>({{ $customer->orders_count }} total)</small></h4>
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead><tr><th>Order No.</th><th>Status</th><th>Total</th><th>Date</th></tr></thead>
                            <tbody>
                                @forelse($orders[$customer->id] ?? [] as $order)
                                    <tr>
                                        <td>{{ $order->order_number }}</td>
                                        <td><span class="badge badge-{{ $order->status === 'completed' ? 'success' : ($order->status === 'cancelled' ? 'danger' : 'warning') }}">{{ ucfirst($order->status) }}</span></td>
                                        <td>PHP {{ number_format($order->total_amount, 2) }}</td>
                                        <td>{{ \Carbon\Carbon::parse($order->created_at)->format('M d, Y') }}</td>
                                    </tr>
                                @empty
                                    <tr><td colspan="4" class="text-center">This customer has no order logs.</td></tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="editCustomerModal{{ $customer->id }}" tabindex="-1" role="dialog" aria-labelledby="editCustomerModalLabel{{ $customer->id }}" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content" action="{{ route('gym-customers.update', $customer->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="modal-header">
                    <h4 class="modal-title" id="editCustomerModalLabel{{ $customer->id }}">Edit Customer</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="form-group"><label for="name{{ $customer->id }}">Name</label><input id="name{{ $customer->id }}" class="form-control" name="name" value="{{ old('name', $customer->name) }}" required></div>
                    <div class="form-group"><label for="email{{ $customer->id }}">Email</label><input id="email{{ $customer->id }}" class="form-control" type="email" name="email" value="{{ old('email', $customer->email) }}" required></div>
                    <div class="form-group"><label for="phone{{ $customer->id }}">Phone</label><input id="phone{{ $customer->id }}" class="form-control" name="phone" value="{{ old('phone', $customer->phone) }}"></div>
                    <div class="form-group"><label for="address{{ $customer->id }}">Address</label><textarea id="address{{ $customer->id }}" class="form-control" name="address" rows="3">{{ old('address', $customer->address) }}</textarea></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Changes</button>
                </div>
            </form>
        </div>
    </div>
@endforeach

@endsection
