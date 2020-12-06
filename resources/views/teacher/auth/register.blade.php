<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}public/assets/admin/images/favicon.png">
    <title>Teacher</title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/style.css">
    <!--[if lt IE 9]>
    <script src="{{asset('/')}}public/assets/admin/js/html5shiv.min.js"></script>
    <script src="{{asset('/')}}public/assets/admin/js/respond.min.js"></script>
    <![endif]-->
</head>
<body background="{{asset('/')}}public/assets/admin/images/bookph180.jpg">
<!--        <div class="main-wrapper">-->
<div class="account-page">
    <div class="container d-flex h-100">
        <div class="account-box justify-content-center align-self-center">
            <div class="account-logo">
                <a href="index.php"><img src="{{asset('/')}}public/assets/admin/images/logo2.png" alt="Preadmin"></a>
            </div>
            <h3 class="account-title"> Staff Register</h3>
            @foreach ($errors->all() as $error)

     <h5 class="mt-2" style="color:red" align="center">{{ $error }}</h5>
      @endforeach
            <div class="account-wrapper">
                <form class="user" action="{{ route('teacher-register-process') }}" method="POST">
                    @csrf
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Name</label>
                        <input class="form-control floating" type="text" required name="name">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Department</label>

                        <select required name="department_id" class="form-control">
                                        @foreach($departments as $department)
                                        <option value="{{ $department->id }}">{{ $department->department_name }}</option>
                                    @endforeach
                                    </select>
                    </div>
                    
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Designation</label>

                        <select required name="designation_id" class="form-control">
                            @foreach($designation as $v_designation)
                                <option value="{{ $v_designation->id }}">{{ $v_designation->designation_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Email</label>
                        <input class="form-control floating" required type="email" name="email">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Password</label>
                        <input class="form-control floating" required type="password" name="password">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Mobile Number</label>
                        <input class="form-control floating" required type="text" name="mobile_number">
                    </div>
                    <div class="form-group text-center">
                        <input type="submit" class="dash-btn" value="Register" >
                    </div>
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
