@extends('admin.master')
@section('body')
    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="page-title">Edit Teacher</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card-box">
                        <h3 style="color:green" align="center">{{Session::get('message')}}</h3>
                        <form name="editTeacherForm" class="form-horizontal" action="{{route('update-teacher')}}" method="POST">
                            @csrf
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Teacher name</label>
                                <div class="col-md-10">
                                    <input type="text" name="name" value="{{$teacher->name}}" placeholder="Enter name" class="form-control">
                                    <input type="hidden" name="id" value="{{$teacher->id}}">

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
                                <label class="control-label col-lg-2">Phone</label>
                                <div class="col-md-10">
                                    <input type="text" name="mobile_number" value="{{$teacher->mobile_number}}" placeholder="Enter phone number" class="form-control">
                                </div>
                            </div>


                            <div class="form-group row">
                                <label class="control-label col-lg-2"></label>
                                <div class="col-md-10">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <a href="{{route('manage-teacher')}}" type="button" class="btn btn-primary">Cancel</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.forms['editTeacherForm'].elements['department_id'].value = '{{ $teacher->department_id }}';
    </script>

@endsection
