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
                    <h1 class="card-title text-center">Edit Notice</h1>
                <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                <form class="form-horizontal" action="{{route('update-notice')}}" method="POST">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Notice Name</label>
                            <div class="col-md-10">
                            <input type="text" name="title" value="{{$notice->title}}" placeholder="Enter a notice title" class="form-control">
                            <input type="hidden" name="id" value="{{$notice->id}}">

                        </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Notice Description</label>
                            <div class="col-md-10">
                                <textarea rows="5" cols="5" class="form-control"  name="description" placeholder="Enter a notice ">{{$notice->description}}</textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="control-label col-lg-2">Notice Status</label>
                           
                                    <div class="col-lg-10">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" {{$notice->status ==1 ? "checked":""}} value="1" name="status"> Publish
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" value="0"{{$notice->status ==0 ? "checked":""}} name="status"> Unpublish
                                            </label>
                                        </div>
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
                            <button type="submit" class="btn btn-lg btn-primary">Save</button>
                                
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>  
@endsection