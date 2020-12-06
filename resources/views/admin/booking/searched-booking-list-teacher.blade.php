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
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>




                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Book Name</th>
                                    <th>Staff Name</th>
                                    <th>Request Date</th>
                                    <th>Issue Date</th>
                                    <th>Return Date</th>
                                    <th>Payment Date</th>
                                    <th>Status</th>
                                    <th>Charge Status</th>


                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($bookings as $booking)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$booking->book_name}}</td>
                                        <td>{{$booking->name}}</td>
                                        <td>{{$booking->request_date}}</td>
                                        <td>{{$booking->issue_date}}</td>
                                        <td>{{$booking->return_date}}</td>
                                        <td>{{$booking->payment_date}}</td>
                                        <td>
                                            @if($booking->status==0)
                                                Pending
                                            @elseif($booking->status==1)
                                                Received
                                            @elseif($booking->status==2)
                                                Returned
                                            @elseif($booking->status==4)
                                                Cancelled
                                            @endif
                                        </td>
                                        <td>
                                            @if($booking->charge_paid==1)
                                                Paid
                                            @else
                                                Unpaid
                                            @endif
                                        </td>
                                    </tr>
                                    
                                @endforeach
                                </tbody>
                            </table>
                            
                            <div class="d-flex justify-content-center">
                                {{ $bookings->links() }}
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







@endsection
