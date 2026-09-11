<div class="row">
    <div class="col-lg-4">
        <div class="widget style1 navy-bg">
            <div class="row">
                <div class="col-xs-12 text-center">
                    {{ $w1 ?? '' }}
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="widget style1 lazur-bg">
            <div class="row">
                <div class="col-xs-12 text-center">
                    {{ $w2 ?? '' }}
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="widget style1 yellow-bg">
            <div class="row">
                <div class="col-xs-12 text-center">
                    {{ $w3 ?? '' }}
                </div>
            </div>
        </div>
    </div>

    {{ $slot }}
</div>
