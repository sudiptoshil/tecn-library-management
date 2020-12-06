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
</head>

<body background="{{asset('/')}}public/assets/admin/images/bookph180.jpg">
<!--        <div class="main-wrapper">-->
      @foreach ($errors->all() as $error)

     <h5 style="color:red" align="center">{{ $error }}</h5>
      @endforeach
      
      
<div class="account-page">
    <div class="container d-flex h-100">
        <div class="account-box justify-content-center align-self-center">
            <div class="account-logo">
                <a href="index.php"><img src="{{asset('/')}}public/assets/admin/images/logo2.png" alt="Preadmin"></a>
            </div>
            <h3 class="account-title">Student Register</h3>
            @foreach ($errors->all() as $error)

     <h5 class="mt-2" style="color:red" align="center">{{ $error }}</h5>
      @endforeach
            <h5 class="mt-2" style="color:red" align="center">{{Session::get('message')}}</h5>
            <div class="account-wrapper">
                <form class="user" action="{{ route('student-register-process') }}" enctype="multipart/form-data" method="POST">
                    @csrf
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Name</label>
                        <input class="form-control floating" type="text" name="name" required>
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Reg No</label>
                        <input class="form-control floating" type="text" name="reg_no" required>
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label mb-4"><span style="color:red">*</span> Department</label>
                        <br>
                        <br>
                        <br>
                        <br>
                        <select name="department_id" class="form-control">
                            @foreach($departments as $department)
                                <option value="{{ $department->id }}">{{ $department->department_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Year</label>
                        <input class="form-control floating" type="text" required  name="year">
                    </div>

                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Session</label>
                        <input class="form-control floating" type="text" required  name="student_session">
                    </div>

                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Email</label>
                        <input required class="form-control floating" type="email" name="email">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label"><span style="color:red">*</span> Password</label>
                        <input required class="form-control floating" type="password" name="password">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label">Mobile Number</label>
                        <input class="form-control floating" type="text" name="phone">
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label">Note</label>
                        <textarea class="form-control floating"  type="text" name="note"></textarea>
                    </div>
                    <div class="form-group form-focus">
                        <label class="control-label">Photo</label>
                        <input type="file"  name="photo" accept="image/*">
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
