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
                <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                <form class="form-horizontal" action="{{route('save-department')}}" method="POST">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Department Name</label>
                            <div class="col-md-10">
                                <input type="text" name="name" placeholder="Department Name" class="form-control">
                            </div>
                        </div>
                        <!--<div class="form-group row">-->
                        <!--    <label class="control-label col-lg-2"></label>-->
                        <!--    <div class="col-md-10">-->
                        <!--        <button type="submit" class="btn btn-primary">Save</button>-->
                        <!--        <button type="reset" class="btn btn-primary">Cancel</button>-->
                        <!--    </div>-->
                        <!--</div>-->
                        
                        <div class="d-flex justify-content-center mt-4">
                            <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>  
@endsection