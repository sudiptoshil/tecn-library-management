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
                <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                <form class="form-horizontal" action="{{route('update-publication')}}" method="POST">
                    @csrf
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Publication Name</label>
                            <div class="col-md-10">
                            <input type="text" name="publication_name" value="{{$publication->name}}" placeholder="Publication Name" class="form-control">
                            <input type="hidden" name="id" value="{{$publication->id}}">

                        </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Publication Address</label>
                            <div class="col-md-10">
                            <textarea rows="5" cols="5" class="form-control" name="address" placeholder="Publication Address">{{$publication->address}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-lg-2"></label>
                            <div class="col-md-10">
                                <button type="submit" class="btn btn-primary">Update</button>
                            <a href="{{route('manage-publication')}}" type="button" class="btn btn-primary">Cancel</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>  
@endsection