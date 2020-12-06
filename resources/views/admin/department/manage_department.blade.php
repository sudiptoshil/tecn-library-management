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
                            <a type="button" style="margin-bottom:2%" href="{{route('add-department')}}" class="btn btn-primary">Add Department </a>
                            
                            </div>
                        
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Department name</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($department as $v_department)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_department->department_name}}</td>
                                    <td>{{$v_department->department_status == 1 ? 'Active' : 'Inactive'}}</td>
                                <td>
                                    @if($v_department->department_status == 1)
                                        <a href="{{route('deactivate-department',['id'=>$v_department->id])}}" class="btn btn-info btn-xs">
                                            <span class="fa fa-arrow-up mr-2"></span>
                                        </a>
                                    @else
                                        <a href="{{route('activate-department',['id'=>$v_department->id])}}" class="btn btn-warning btn-xs">
                                            <span class="fa fa-arrow-down mr-2"></span>
                                        </a>
                                    @endif
                                    <a class="ml-2" href="{{route('edit-department',['id'=>$v_department->id])}}">Edit</a>
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
