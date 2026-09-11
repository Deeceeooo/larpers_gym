@extends('layouts.app')
@section('content')

<x-page-header pagetitle="Movies" class="bg-primary"/>

    <div class="container mt-3">
        <div class="mt-4 p-5 bg-secondary text-white rounded">
            <h3>I like the movie, {{ $movie }}</h3>
        </div>
    </div>

@endsection
