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
                <form class="form-horizontal" action="{{route('update-author')}}" method="POST">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Author Name</label>
                            <div class="col-md-10">
                            <input type="text" name="author_name" value="{{$author->author_name}}" placeholder="Enter a author name" class="form-control">
                            <input type="hidden" name="id" value="{{$author->id}}">

                        </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Author Address</label>
                            <div class="col-md-10">
                                <textarea rows="5" cols="5" class="form-control" name="address" placeholder="Enter a author address">{{$author->address}}</textarea>
                            </div>
                        </div>
                        <!--<div class="form-group row">-->
                        <!--    <label class="control-label col-lg-2"></label>-->
                        <!--    <div class="col-md-10">-->
                        <!--        <button type="submit" class="btn btn-primary">save</button>-->
                        <!--        <a href="{{route('manage-author')}}" type="button" class="btn btn-primary">cancel</a>-->
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