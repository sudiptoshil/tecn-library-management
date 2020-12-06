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
                            <h4 class="text-center page-title">Cancelled Reports</h4>
                            <h3 style="color:black" align="center">{{Session::get('message')}}</h3>




                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Book Name</th>
                                    <th>Staff Name</th>
                                    <th>Request Date</th>
                                    <th>Issue Date</th>
                                    <th>Reason</th>


                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($reports as $report)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$report->book_name}}</td>
                                        <td>{{$report->name}}</td>
                                        <td>{{$report->request_date}}</td>
                                        <td>{{$report->issue_date}}</td>
                                        <td>{{$report->reason}}</td>

                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div class="d-flex justify-content-center">
                                {{ $reports->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







@endsection
