@extends('admin.master')
@section('body')
    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="page-title">Manage Students</h4>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-12">
                    <div class="card-box">
                        <div class="card-block">
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>


                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Student Name</th>
                                    <th>Registration Number</th>
                                    <th>Department</th>
                                    <th>Year</th>
                                    <th>Session</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Photo</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @if(!$students->isEmpty())
                                @foreach($students as $student)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$student->name}}</td>
                                        <td>{{$student->reg_no}}</td>
                                        <td>{{$student->department_name}}</td>
                                        <td>{{$student->year}}</td>
                                        <td>{{$student->student_session}}</td>
                                        <td>{{$student->phone}}</td>
                                        <td>{{$student->email}}</td>
                                        <td><img src="{{asset($student->photo)}}" alt="" width="100" height="100"></td>
                                        <td>{{$student->student_status == 1 ? 'Active' : 'Inactive'}}</td>
                                        <td>
                                            @if($student->student_status == 1)
                                                <a href="{{route('deactivate-student',['id'=>$student->id])}}"
                                                   class="btn btn-info btn-xs">
                                                    <span class="fa fa-arrow-up mr-2"></span>
                                                </a>
                                            @else
                                                <a href="{{route('activate-student',['id'=>$student->id])}}"
                                                   class="btn btn-warning btn-xs">
                                                    <span class="fa fa-arrow-down mr-2"></span>
                                                </a>
                                            @endif

                                            <a href="{{route('edit-student',['id'=>$student->id])}}"
                                               class="ml-2">Edit</a>
                                        </td>
                                    </tr>
                                @endforeach
                                    @else
                                    <h3 class="text-center">No students found</h3>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
