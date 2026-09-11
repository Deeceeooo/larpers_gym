<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>
<body class="gray-bg">
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <h2>Customer Registration</h2>
            <p>Create a customer account for the gym shop.</p>

            @if(isset($errors) && $errors->any())
                <div class="alert alert-danger">Please check the form and try again.</div>
            @endif

            <form class="m-t" role="form" action="{{ url('/customer-register') }}" method="post">
                @csrf
                <div class="form-group">
                    <input type="text" name="name" class="form-control" placeholder="Full name" value="{{ old('name') }}" required>
                </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Email" value="{{ old('email') }}" required>
                    @if(isset($errors) && $errors->has('email'))
                        <small class="text-danger">{{ $errors->first('email') }}</small>
                    @endif
                </div>
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" placeholder="Phone" value="{{ old('phone') }}">
                </div>
                <div class="form-group">
                    <textarea name="address" class="form-control" placeholder="Address">{{ old('address') }}</textarea>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <input type="password" name="password_confirmation" class="form-control" placeholder="Confirm password" required>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Register</button>
            </form>

            <a href="{{ url('/login') }}">Back to Admin Login</a>
        </div>
    </div>
</body>
</html>
