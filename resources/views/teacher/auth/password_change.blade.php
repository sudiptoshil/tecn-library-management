@extends('teacher.master')
@section('body')
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <h4 style="color:red" align="center">{{Session::get('message')}}</h4>
        <div class="row">
            <div class="col-lg-12">
                <div class="card-box">
                    <h4 class="card-title">Password Change</h4>
                <h3 style="color:green" align="center"></h3>
                <form class="form-horizontal" action="{{route('teacher-update-password')}}" method="POST">
                    @csrf
                    
                        <div class="form-group row">
                            <!--<label class="control-label col-lg-2">type your registration number</label>-->
                            <!--<div class="col-md-10">-->
                            <!--    <input type="text" name="reg_no" placeholder="Enter your email" class="form-control">-->
                            <!--</div>-->
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Type Your Old Password</label>
                            <div class="col-md-10">
                                <input type="password" name="oldpassword" placeholder="Enter your old password" class="form-control">
                            </div>
                        </div>
                         <div class="form-group row">
                            <label class="control-label col-lg-2">Type a New  Password</label>
                            <div class="col-md-10">
                                <input type="password" name="new_password" placeholder="Enter a new password" class="form-control">
                                <input type="hidden" name="id" value="{{Session::get('teacher_id')}}" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-lg-2"></label>
                            <div class="col-md-10">
                                <button type="submit" class="btn btn-primary">Update</button>
                                <button type="reset" class="btn btn-primary">Cancel</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>  
@endsection