@extends('admin.master')
@section('body')
    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="page-title">Edit Student</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card-box">
                        <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                        <form enctype="multipart/form-data" name="editStudentForm" class="form-horizontal" action="{{route('update-student')}}" method="POST">
                            @csrf
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Student name</label>
                                <div class="col-md-10">
                                    <input type="text" name="name" value="{{$student->name}}" placeholder="Enter a author name" class="form-control">
                                    <input type="hidden" name="id" value="{{$student->id}}">

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Registration Number</label>
                                <div class="col-md-10">
                                    <input type="text" name="reg_no" value="{{$student->reg_no}}" placeholder="Enter reg number" class="form-control">

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Department</label>
                                <div class="col-md-10">
                                    <select name="department_id" class="form-control">
                                        @foreach($departments as $department)
                                            <option value="{{ $department->id }}">{{ $department->department_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Year</label>
                                <div class="col-md-10">
                                    <input type="text" name="year" value="{{$student->year}}" placeholder="Enter year" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Phone</label>
                                <div class="col-md-10">
                                    <input type="text" name="phone" value="{{$student->phone}}" placeholder="Enter phone number" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-lg-2">Note</label>
                                <div class="col-md-10">
                                    <textarea type="email" name="note" class="form-control">{{$student->note}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Photo</label>
                                <div class="col-md-10">
                                    <input type="file" name="photo" accept="image/*">
                                    <br/><br/>
                                    <img src="{{asset($student->photo)}}" alt="" height="100" width="120">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2"></label>
                                <div class="col-md-10">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <a href="{{route('manage-student')}}" type="button" class="btn btn-primary">Cancel</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.forms['editStudentForm'].elements['department_id'].value = '{{ $student->department_id }}';
    </script>

@endsection
