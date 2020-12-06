{{--<!--@extends('layouts.app')-->

<!--@section('content')-->
<!--<div class="container">-->
<!--    <div class="row justify-content-center">-->
<!--        <div class="col-md-8">-->
<!--            <div class="card">-->
<!--                <div class="card-header">{{ __('Reset Password') }}</div>-->

<!--                <div class="card-body">-->
<!--                    @if (session('status'))-->
<!--                        <div class="alert alert-success" role="alert">-->
<!--                            {{ session('status') }}-->
<!--                        </div>-->
<!--                    @endif-->

<!--                    <form method="POST" action="{{ route('password.email') }}">-->
<!--                        @csrf-->

<!--                        <div class="form-group row">-->
<!--                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>-->

<!--                            <div class="col-md-6">-->
<!--                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>-->

<!--                                @error('email')-->
<!--                                    <span class="invalid-feedback" role="alert">-->
<!--                                        <strong>{{ $message }}</strong>-->
<!--                                    </span>-->
<!--                                @enderror-->
<!--                            </div>-->
<!--                        </div>-->

<!--                        <div class="form-group row mb-0">-->
<!--                            <div class="col-md-6 offset-md-4">-->
<!--                                <button type="submit" class="btn btn-primary">-->
<!--                                    {{ __('Send Password Reset Link') }}-->
<!--                                </button>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </form>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</div>--> --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}public/assets/admin/images/favicon.png">
    <title>Admin</title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/style.css">
    <!--[if lt IE 9]>
    <script src="{{asset('/')}}public/assets/admin/js/html5shiv.min.js"></script>
    <script src="{{asset('/')}}public/assets/admin/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--        <div class="main-wrapper">-->
<div class="account-page">
    <div class="container d-flex h-100">
        <div class="account-box justify-content-center align-self-center">
            <div class="account-logo">
                <a href="index.php"><img src="{{asset('/')}}public/assets/admin/images/logo2.png" alt="Preadmin"></a>
            </div>
            <h3 class="account-title">{{ __('Reset Password') }}</h3>
            <div class="account-wrapper">
                @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                <form class="user" action="{{ route('password.email') }}" method="POST">
                    @csrf
                   <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Enter Your Old Email" required autocomplete="email" autofocus>
                   
                    <div class="form-group text-center" >
                        <button style="margin-top="10%;" type="submit" class="btn btn-primary">
                                    {{ __('Send Password Reset Link') }}
                                </button>
                    </div>
                     @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                     @enderror
                    <div class="text-center">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--        </div>-->
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/app.js"></script>
</body>

</html>

{{--<!--@endsection-->--}}
