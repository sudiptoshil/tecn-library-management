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
                        <h4 class="card-title text-center">Add Notice</h4>
                        <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                        <form class="form-horizontal" action="{{route('save-notice')}}" method="POST">
                            @csrf
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Notice Name</label>
                                <div class="col-md-10">
                                    <input type="text" name="title" placeholder="Notice Title" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Notice Description</label>
                                <div class="col-md-10">
                                    <textarea rows="5" cols="5" class="form-control" name="description"
                                              placeholder="Description"></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-lg-2">Notice Status</label>

                                <div class="col-lg-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" value="1" name="status"> Publish
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" value="0" name="status"> Unpublish
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2"><span style="color:red">*</span> Select Privacy</label>
                                <div class="col-lg-10">
                                <select name="privacy" class="form-control">

                                    <option value="1">Student</option>
                                    <option value="2">Teacher</option>
                                    <option value="3">All</option>

                                </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2"></label>
                                <div class="col-md-10">
                                    <button type="submit" class="btn btn-primary">save</button>
                                    <button type="reset" class="btn btn-primary">cancel</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection