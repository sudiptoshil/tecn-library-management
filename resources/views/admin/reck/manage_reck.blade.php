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
                            <a type="button" style="margin-bottom:2%" href="{{route('add-reck')}}" class="btn btn-primary">Add Rack</a>
                            </div>
                        <h3 style="color:black" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Reck Number</th>                                   
                                    <th>Action</th>

                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($reck as $v_reck)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_reck->no}}</td>
                                    {{-- <td>{{$v_reck->type}}</td> --}}
                                <td>
                                    <a href="{{route('edit-reck',['id'=>$v_reck->id])}}" class="ml-2">Edit</a>
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
