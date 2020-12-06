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
                            <h3 style="color:black" align="center">{{Session::get('message')}}</h3>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Staff Name</th>
                                    <th>Department</th>
                                    <th>Designation</th>
                                    <th>Phone</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($teachers as $teacher)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$teacher->name}}</td>
                                        <td>{{$teacher->department_name}}</td>
                                        <td>{{$teacher->designation_name}}</td>
                                        <td>{{$teacher->mobile_number}}</td>
                                        <td>{{$teacher->teacher_status == 1 ? 'Active' : 'Inactive'}}</td>
                                        <td>
                                            @if($teacher->teacher_status == 1)
                                                <a href="{{route('deactivate-teacher',['id'=>$teacher->id])}}" class="btn btn-info btn-xs">
                                                    <span class="fa fa-arrow-up mr-2"></span>
                                                </a>
                                            @else
                                                <a href="{{route('activate-teacher',['id'=>$teacher->id])}}" class="btn btn-warning btn-xs">
                                                    <span class="fa fa-arrow-down mr-2"></span>
                                                </a>
                                            @endif

                                            <a href="{{route('edit-teacher',['id'=>$teacher->id])}}" class="ml-2">Edit</a>
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
