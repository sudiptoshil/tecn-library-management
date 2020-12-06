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


                            <form action="{{route('searched-student-list')}}" method="get">
                                @csrf
                                <div class="form-inline col-md-12 mt-3">

                                    <div class="form-group col-md-3">


                                        <input type="text" class="form-control col-md-10" name="student_reg_no"
                                               aria-describedby="emailHelp" placeholder="Student Registration No">


                                    </div>


                                    <div class="form-group col-md-3">

                                        <select name="department_id" class="form-control col-md-10">

                                            <option selected>Select Dept</option>
                                            @foreach($departments as $department)
                                                <option value="{{$department->id}}">{{$department->department_name}}</option>
                                            @endforeach

                                        </select>

                                    </div>
                                    <div class="form-group col-md-3">

                                        <label>Status: </label>

                                        <label class="ml-2"> <input type="radio" name="student_status" value="1"> Active
                                        </label>
                                        <label class="ml-2"> <input type="radio" name="student_status" value="0">
                                            Inactive </label>


                                    </div>
                                    <div class="form-group col-md-3">


                                    </div>


                                </div>


                                <div class="d-flex justify-content-center mt-4">
                                    <input type="submit" class="btn btn-primary mt-4 mb-2" value="Search">

                                </div>


                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
