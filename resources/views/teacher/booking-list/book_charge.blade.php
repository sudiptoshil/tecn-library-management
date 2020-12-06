@extends('teacher.master')
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
                        <h5 class="text-bold card-title"> Book Charge Report</h5>
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Expected Return Date</th>
                                    <th>Return Date</th>
{{--                                    <th>Charge Name</th>--}}
                                    <th>Charge Amount</th>
                                    <th>Payment Date</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($chargereport as $v_report)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_report->book_name}}</td>
                                    <td>{{$v_report->x_date}}</td>
                                    <td>{{$v_report->return_date}}</td>
{{--                                    <td>{{$v_report->charge_name}}</td>--}}
                                    <td>{{$v_report->charge}} BDT</td>
                                    <td>{{$v_report->payment_date}}</td>
                                   @if($v_report->charge_paid == 1)
                                    <td style="color:green"><u><b>Paid</b></u></td>
                                    @else
                                    <td style="color:red"><u><b>Unpaid</b></u></td>
                                    @endif
                                </tr>
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