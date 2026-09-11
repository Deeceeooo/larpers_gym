<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate, max-age=0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>Gym Shop Admin Login</title>

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <style>
        body.login-page {
            min-height: 100vh;
        }

        .login-page-wrap {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 30px 15px;
        }

        .login-card {
            width: 100%;
            max-width: 420px;
        }

        .login-card .ibox-content {
            padding: 36px 34px;
        }

        .login-brand-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 64px;
            height: 64px;
            margin-bottom: 16px;
            border-radius: 50%;
            background: #1ab394;
            color: #ffffff;
        }

        .login-brand-icon svg {
            width: 34px;
            height: 34px;
            fill: none;
            stroke: currentColor;
            stroke-linecap: round;
            stroke-linejoin: round;
            stroke-width: 2.75;
        }

        .login-title {
            margin-bottom: 4px;
            font-weight: 700;
            color: #676a6c;
        }

        .login-subtitle {
            margin-bottom: 24px;
            color: #888888;
        }

        .login-links {
            margin-top: 16px;
        }
    </style>
</head>
<body class="gray-bg login-page">
    <div class="login-page-wrap">
        <div class="login-card animated fadeInDown">
            <div class="ibox">
                <div class="ibox-content text-center">
                    <div class="login-brand-icon">
                        <svg viewBox="0 0 48 48" role="img" aria-label="Gym dumbbell icon">
                            <path d="M8 16v16M14 12v24M34 12v24M40 16v16M14 24h20"></path>
                        </svg>
                    </div>
                    <h2 class="login-title">LARPERS</h2>
                    <p class="login-subtitle">Dashboard</p>

                    @if(Session::has('success'))
                        <div class="alert alert-success">{{ Session::get('success') }}</div>
                    @endif

                    @if(Session::has('error'))
                        <div class="alert alert-danger">{{ Session::get('error') }}</div>
                    @endif

                    @if(isset($errors) && $errors->any())
                        <div class="alert alert-danger">Please enter a valid email and password.</div>
                    @endif

                    <form class="m-t" role="form" action="{{ url('/login') }}" method="post" autocomplete="off">
                        @csrf
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Admin email" value="{{ old('email') }}" required autofocus>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>
                        <button type="submit" class="btn btn-primary block full-width m-b">Login</button>
                    </form>

                    <div class="login-links">
                        <a href="{{ url('/customer-register') }}">Customer Registration</a>
                        <p class="m-t"><small>Admin account: admin@gymshop.com / admin123</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
