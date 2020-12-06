@extends('admin.master')
@section('body')
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card-box">

                <form class="form-horizontal" action="{{route('update-department')}}" method="POST">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Department Name</label>
                            <div class="col-md-10">
                            <input type="text" name="name" value="{{$department->department_name}}" placeholder="Department Name" class="form-control">
                            <input type="hidden" name="id" value="{{$department->id}}">

                            </div>
                        </div>
                        <!--<div class="form-group row">-->
                        <!--    <label class="control-label col-lg-2"></label>-->
                        <!--    <div class="col-md-10">-->
                        <!--        <button type="submit" class="btn btn-primary">save</button>-->
                        <!--    <a href="{{route('manage-department')}}" type="button" class="btn btn-primary">cancel</a>-->
                        <!--    </div>-->
                        <!--</div>-->
                        
                        <div class="d-flex justify-content-center mt-4">
                            <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>  
@endsection