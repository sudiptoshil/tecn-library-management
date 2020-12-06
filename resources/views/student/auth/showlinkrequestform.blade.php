<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}assets/admin/images/favicon.png">
    <title>Admin</title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}assets/admin/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}assets/admin/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}assets/admin/css/style.css">
    <!--[if lt IE 9]>
    <script src="{{asset('/')}}assets/admin/js/html5shiv.min.js"></script>
    <script src="{{asset('/')}}assets/admin/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--        <div class="main-wrapper">-->
<div class="account-page">
    <div class="container d-flex h-100">
        <div class="account-box justify-content-center align-self-center">
            <div class="account-logo">
                <a href="index.php"><img src="{{asset('/')}}assets/admin/images/logo2.png" alt="Preadmin"></a>
            </div>
            <h3 class="account-title">password reset form</h3>
            <div class="account-wrapper">
           
                <form class="user" action="{{ route('password-reset-email') }}" method="POST"> --}}
                     @csrf
                    <div class="form-group form-focus">
                        <label class="control-label">Email</label>
                        <input class="form-control floating" type="email" name="email">
                    </div>
                    {{-- <div class="form-group form-focus">
                        <label class="control-label">Password</label>
                        <input class="form-control floating" type="password" name="password">
                    </div> --}}
                    <div class="form-group text-center">
                        <input type="submit" class="dash-btn" value="submit" >
                    </div>
                    {{-- <div class="text-center">
                        <a href="forgot-password.php">Forgot your password?</a>
                    </div> --}}
                </form>
            </div>
        </div>
    </div>
</div>
<!--        </div>-->
<script type="text/javascript" src="{{asset('/')}}assets/admin/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}assets/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}assets/admin/js/app.js"></script>
</body>

</html>
