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
                            <h4 class="page-title text-center">{{$notice->title}}</h4>
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>


                            {{$notice->description}}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
