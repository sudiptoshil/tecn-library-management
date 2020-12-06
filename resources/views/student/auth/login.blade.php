<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}public/assets/admin/images/favicon.png">
    <title>Student</title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/style.css">
    <!--[if lt IE 9]>
    <script src="{{asset('/')}}public/assets/admin/js/html5shiv.min.js"></script>
    <script src="{{asset('/')}}public/assets/admin/js/respond.min.js"></script>
    <![endif]-->
        <style type="text/css">
        #bgimg {
            background-image: url('{{asset('/')}}public/assets/admin/images/bookph180.jpg');
        }
</style>
</head>
<body background="{{asset('/')}}public/assets/admin/images/bookph180.jpg">
<!--        <div class="main-wrapper">-->
<div class="account-page">
    <div class="container d-flex h-100">
        <div class="account-box justify-content-center align-self-center">
            <div class="account-logo">
                <a href="https://www.cursorbd.com/"><img src="{{asset('/')}}public/assets/admin/images/logo2.png" alt="Preadmin"></a>
            </div>
            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
            <h3 class="account-title" ><b>Student Login</b></h3>
            <div class="account-wrapper">
                <form class="user" action="{{ route('student-login-process') }}" method="POST">
                    @csrf
                    <div class="form-group form-focus">
                        <label class="control-label">Registration Number</label>
                        <input class="form-control floating" required type="number" name="reg_no">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label">Password</label>
                        <input class="form-control floating" required type="password" name="password">
                    </div>
                    <div class="form-group text-center">
                        <input type="submit" class="dash-btn" value="Login" >
                    </div>
                    <div class="text-center">
                   <a href="{{route('student-register')}}" style="color:red"><b>New Register</b></a>
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
