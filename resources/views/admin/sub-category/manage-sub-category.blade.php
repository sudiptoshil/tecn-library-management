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
                        <div class="card-block">
                            
                            <div class="d-flex justify-content-end">
                                <a type="button" style="margin-bottom:2%" href="{{route('add-sub-category')}}" class="btn btn-primary">Add SubCategory </a>
                                </div>
                            
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Category</th>
                                    <th>Sub Category</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($categories as $category)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$category->name}}</td>
                                        <td>{{$category->sub_cat_name}}</td>
                                        <td>

                                            <a href="{{route('edit-sub-category',['id'=>$category->id])}}" class="ml-2">Edit</a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
