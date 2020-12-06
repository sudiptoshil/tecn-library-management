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
                            <h4 class=text-center "page-title">Charged Report</h4>
                            <h3 style="color:black" align="center">{{Session::get('message')}}</h3>


                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Student name</th>
                                    <th>Request Date</th>
                                    <th>Expected Return Date</th>
                                    <th>Payment Date</th>
                                    <th>Charge Amount</th>
                                    <th>Charge Paid Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($chargereport as $v_report)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$v_report->book_name}}</td>
                                        <td>{{$v_report->name}}</td>
                                        <td>{{$v_report->request_date}}</td>
                                        <td>{{$v_report->x_date}}</td>
                                        <td>{{$v_report->payment_date}}</td>
                                        <td>{{$v_report->charge}} BDT</td>
                                        @if($v_report->charge_paid == 1)
                                            <td><h5 style="color:green"><i><u>Paid</u></i></h5></td>

                                        @elseif($v_report->charge_paid == 0)
                                            <td><h5 style="color:red"><i><u>Unpaid</u></i></h5></td>
                                            <td><a onclick=" return checkpaid()"
                                                   href="{{route('charge-paid-student',['id' => $v_report->id])}}"
                                                   type="button" class="btn btn-primary">Paid</a></td>
                                        @endif
                                    </tr>


                                    <!-- Modal -->
                                @endforeach
                                </tbody>
                            </table>
                            <div class="d-flex justify-content-center">
                                {{ $chargereport->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
