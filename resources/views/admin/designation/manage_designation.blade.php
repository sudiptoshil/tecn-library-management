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
                                <a type="button" style="margin-bottom:2%" href="{{route('add-designation')}}" class="btn btn-primary">Add Designation </a>

                            </div>

                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Designation name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($designation as $v_designation)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$v_designation->designation_name}}</td>
                                        <td>
                                            <a class="ml-2" href="{{route('edit-designation',['id'=>$v_designation->id])}}">Edit</a>
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
