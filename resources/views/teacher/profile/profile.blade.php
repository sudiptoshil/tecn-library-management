@extends('teacher.master')
@section('body')
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <h4 class="page-title">profile part</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card-box">
                    <h4 class="card-title">Teacher profile</h4>
                <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                <form class="form-horizontal" action="{{route('teacher-update-profile')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Teacher Name</label>
                            <div class="col-md-10">
                                <input type="text" name="name" placeholder="Enter your name" value="{{$teacher->name}}" class="form-control">
                                <input type="hidden" name="id"  value="{{$teacher->id}}" >
                            </div>
                        </div>
                         <div class="form-group row">
                            <label class="control-label col-lg-2">Teacher phone</label>
                            <div class="col-md-10">
                                <input type="text" name="phone" placeholder="Enter your phone" value="{{$teacher->mobile_number}}" class="form-control">
                            </div>
                        </div>
                        
                         <div class="form-group row">
                            <label class="control-label col-lg-2">Teacher email</label>
                            <div class="col-md-10">
                                <input type="text" name="email" placeholder="Enter your email"  value="{{$teacher->email}}" class="form-control">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label class="control-label col-lg-2"></label>
                            <div class="col-md-10">
                                <button type="submit" class="btn btn-primary">update</button>
                                <a  href="{{route('teacher-dashboard')}}" type="button"  class="btn btn-primary">cancel</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
$('#blah').hide();


function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function(e) {
        $('#blah').attr('src', e.target.result);
        }
        
        reader.readAsDataURL(input.files[0]);
        }

        $('#blah').show();
    }

    $("#file-upload").change(function() {
    readURL(this);
});        



</script>
@endsection