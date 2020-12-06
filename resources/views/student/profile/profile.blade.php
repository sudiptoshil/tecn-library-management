@extends('student.master')
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
                    <h4 class="card-title">student profile</h4>
                <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                <form class="form-horizontal" action="{{route('update-profile')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">student name</label>
                            <div class="col-md-10">
                                <input type="text" name="name" placeholder="Enter your name" value="{{$student->name}}" class="form-control">
                                <input type="hidden" name="id"  value="{{$student->id}}" >
                            </div>
                        </div>
                         <div class="form-group row">
                            <label class="control-label col-lg-2">student phone</label>
                            <div class="col-md-10">
                                <input type="text" name="phone" placeholder="Enter your phone" value="{{$student->phone}}" class="form-control">
                            </div>
                        </div>
                        
                         <div class="form-group row">
                            <label class="control-label col-lg-2">student email</label>
                            <div class="col-md-10">
                                <input type="text" name="email" placeholder="Enter your email"  value="{{$student->email}}" class="form-control">
                            </div>
                        </div>
                        
                      <div class="form-group row">
                            <label class="control-label col-lg-2">student photo</label>
                            <div class="col-md-10">
                                   <label for="file-upload" class="control-label col-lg-2" style="cursor: pointer">
                                    <span class="icon text-white-50">
                                            <i class="fas fa-file-upload"></i>
                                        </span>
                                        <span class="text text-white-50">Upload Image</span>
                                    </label>
                                    <input required id="file-upload"  type="file" name="photo"/>
                                    <img src="{{asset($student->photo)}}"/>
                            </div>
                              <div class="col-md-12" align="align-left:40%">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <img id="blah" src="#" alt="" style="height:100px; border: 2px solid grey"/>
                            </div>
                        </div>
                    </div>
                        </div>   
                        <div class="form-group row">
                            <label class="control-label col-lg-2"></label>
                            <div class="col-md-10">
                                <button type="submit" class="btn btn-primary">update</button>
                                <a  href="{{route('student-dashboard')}}" type="button"  class="btn btn-primary">cancel</a>
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