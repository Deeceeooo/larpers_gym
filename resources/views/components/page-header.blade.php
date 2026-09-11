@props(['pagetitle' => ''])

<div {{ $attributes->merge(['class' => 'row wrapper border-bottom white-bg page-heading']) }}>
    <div class="col-lg-10">
        <h2>{{ $pagetitle }}</h2>
    </div>
</div>
