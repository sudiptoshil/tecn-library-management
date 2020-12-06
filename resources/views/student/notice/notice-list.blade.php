@extends('student.master')
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
                            <h4 class="page-title text-center">Notices</h4>
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>




                            <table class="table table-striped ">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th>Date</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($notices as $notice)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$notice->title}}</td>
                                        <td>{{$notice->created_at}}</td>
                                        <td>
{{--                                            {{}}--}}
                                            <a href="{{route('student-notice-details',['id'=>$notice->id])}}"
                                               class="ml-2">Details</a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div class="d-flex justify-content-center">
                                {{ $notices->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
