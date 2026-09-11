@extends('layouts.app')

@section('content')

@if(Session::has('success'))
    <p class="alert alert-success">{{ Session::get('success') }}</p>
@endif

<x-page-header pagetitle="Manage Products" class="bg-info"/>

<div class="wrapper wrapper-content">
    <div class="animated fadeInRightBig">
        <div class="gym-action-bar">
            <div>
                <p class="gym-kicker">Inventory</p>
                <p class="gym-page-note">Equipment and supplements arranged in a clean Swiss product grid.</p>
            </div>
            <a href="{{ url('/gym-product-form') }}" class="btn btn-primary"><i class="fa fa-plus"></i> Add Product</a>
        </div>

        <div class="row gym-product-grid">
            @forelse($products as $product)
                <div class="col-md-3 mb-4">
                    <div class="card">
                        @if($product->photo)
                            <img class="card-img-top" src="{{ asset('_uploads/'.$product->photo) }}" alt="Product Image" style="width:100%; height:180px; object-fit:cover;">
                        @else
                            <div class="card-img-top product-placeholder bg-light text-center" style="height:180px; padding-top:70px;">
                                <i class="fa fa-shopping-bag fa-3x text-muted"></i>
                            </div>
                        @endif
                        <div class="card-body">
                            <span class="badge badge-{{ $product->category == 'equipment' ? 'primary' : 'success' }}">
                                {{ ucfirst($product->category) }}
                            </span>
                            <h5 class="card-title mt-2">{{ $product->name }}</h5>
                            <p class="card-text">{{ $product->description }}</p>
                            <p class="card-text">
                                <strong>{{ $product->category == 'equipment' ? 'Sizes / Weights' : 'Types / Flavors' }}</strong><br>
                                @foreach($options[$product->id] ?? [] as $option)
                                    {{ $option->name }} - PHP {{ number_format($option->price, 2) }}<br>
                                @endforeach
                            </p>
                            <a href="{{ url('/edit-gym-product/'.$product->id) }}" class="btn btn-info btn-sm" onclick="return confirm('Update this product?')"><i class="fa fa-edit"></i></a>
                            <a href="{{ url('/delete-gym-product/'.$product->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Delete this product?')"><i class="fa fa-trash"></i></a>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-md-12">
                    <div class="alert alert-info">No gym products yet. Add your first equipment or supplement product.</div>
                </div>
            @endforelse
        </div>
    </div>
</div>

@endsection
