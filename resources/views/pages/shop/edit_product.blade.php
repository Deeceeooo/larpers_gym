@extends('layouts.app')

@section('content')
<x-page-header pagetitle="Edit Product" class="bg-warning"/>

<div class="wrapper wrapper-content">
    <div class="animated fadeInRightBig">
        <div class="gym-action-bar">
            <div>
                <p class="gym-kicker">Product Revision</p>
                <p class="gym-page-note">Update product details, image, options, and prices.</p>
            </div>
        </div>

        @if($errors->any())
            <div class="alert alert-danger">
                Please check the product details and try again.
            </div>
        @endif

        <form action="{{ url('/update-gym-product') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-7 gym-form-panel">
                    <input type="hidden" name="id" value="{{ $product->id }}">
                    <input type="hidden" name="old_photo" value="{{ $product->photo }}">

                    <div class="form-group mb-3">
                        <label for="category">Product Category</label>
                        <select class="form-control" name="category" id="category" required>
                            <option value="equipment" {{ $product->category == 'equipment' ? 'selected' : '' }}>Gym Equipment</option>
                            <option value="supplement" {{ $product->category == 'supplement' ? 'selected' : '' }}>Gym Supplement</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label for="name">Product Name</label>
                        <input type="text" class="form-control" name="name" id="name" required value="{{ old('name', $product->name) }}">
                    </div>

                    <div class="form-group mb-3">
                        <label for="description">Description</label>
                        <textarea class="form-control" name="description" id="description">{{ old('description', $product->description) }}</textarea>
                    </div>

                    <div class="form-group mb-3">
                        <label for="photo">Photo</label>
                        <input type="file" class="form-control" name="photo" id="photo">
                        @if($product->photo)
                            <small class="text-muted">Current:</small><br>
                            <img src="{{ asset('_uploads/'.$product->photo) }}" width="100" class="border mt-1">
                        @endif
                    </div>

                    <div class="form-group mb-3">
                        <label id="optionLabel">Sizes / Weights and Prices</label>
                        <div id="optionRows">
                            @foreach($options as $option)
                                <div class="row mb-2 option-row">
                                    <div class="col-md-7">
                                        <input type="text" class="form-control option-name" name="option_name[]" value="{{ $option->name }}" required>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="number" step="0.01" min="0" class="form-control" name="option_price[]" value="{{ $option->price }}" required>
                                    </div>
                                    <div class="col-md-1">
                                        <button type="button" class="btn btn-danger remove-option"><i class="fa fa-trash"></i></button>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <button type="button" class="btn btn-success btn-sm" id="addOption"><i class="fa fa-plus"></i> Add Option</button>
                    </div>

                    <hr>
                    <button class="btn btn-primary" type="submit">Update</button>
                    <a href="{{ url('/p3') }}" class="btn btn-secondary">Back</a>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    const category = document.getElementById('category');
    const optionLabel = document.getElementById('optionLabel');
    const optionRows = document.getElementById('optionRows');
    const addOption = document.getElementById('addOption');

    function updateOptionText() {
        const supplement = category.value === 'supplement';
        optionLabel.textContent = supplement ? 'Types / Flavors and Prices' : 'Sizes / Weights and Prices';
        document.querySelectorAll('.option-name').forEach((input) => {
            input.placeholder = supplement ? 'Example: Chocolate, Vanilla, Whey Protein' : 'Example: 10kg, Large, 5lb';
        });
    }

    addOption.addEventListener('click', function () {
        const row = document.querySelector('.option-row').cloneNode(true);
        row.querySelectorAll('input').forEach((input) => input.value = '');
        optionRows.appendChild(row);
        updateOptionText();
    });

    optionRows.addEventListener('click', function (event) {
        if (!event.target.closest('.remove-option')) {
            return;
        }

        if (document.querySelectorAll('.option-row').length > 1) {
            event.target.closest('.option-row').remove();
        }
    });

    category.addEventListener('change', updateOptionText);
    updateOptionText();
</script>
@endsection
