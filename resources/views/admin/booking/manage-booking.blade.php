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
                            <h4 class="page-title text-center">Manage Bookings</h4>
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>

                            <form action="{{route('searched-booking-list')}}" method="get">
                                @csrf

                                <div class="form-inline col-md-12">


                                    <div class="form-group col-md-3">

                                        <input type="text" class="form-control col-md-10 mt-4" name="student_reg_no"
                                               aria-describedby="emailHelp"
                                               placeholder="Registration Number">

                                    </div>


                                    <div class="form-group col-md-3">

                                        <input type="text" class="form-control student_id" name="student_name" placeholder="StudentName">
                                        <input type="hidden" class="hiddenstudent_id" name="student_id">
                                    </div>

                                    <div class="form-group col-md-3">

                                        <input type="text" class="form-control book_id" name="book_name"  placeholder="Book Name">
                                        <input type="hidden" class="hiddenbook_id" name="book_id">

                                    </div>

                                    <div class="form-group col-md-3">
                                        <label class="col-md-10 mb-2">Charge Status</label>
                                        <select name="charge_status" class="form-control col-md-10">
                                            <option selected disabled>Select</option>
                                            <option value="1">Paid</option>
                                            <option value="9">Unpaid</option>
                                        </select>
                                    </div>


                                </div>

                                <div class="form-inline mt-2 col-md-12">
                                    {{--<div class="form-group col-md-3">


                                        <label class="col-md-10">Requested Date</label>


                                    </div>--}}
                                    <div class="form-group col-md-3">


                                        <label class="col-md-10">From Date </label>
                                        <input class="col-md-10 mt-2 form-control" type="date"
                                               name="from_date">

                                    </div>
                                    <div class="form-group col-md-3">


                                        <label class="col-md-10">To Date</label>
                                        <input class="col-md-10 mt-2 form-control" type="date" name="to_date">

                                    </div>

                                    <div class="form-group col-md-3">


                                        <!--<label class="col-md-10 mb-2">Select Status</label>-->
                                        <select name="status" class="form-control col-md-10 mt-4">
                                            <option disabled selected>Select Status</option>
                                            <option value="6">Pending</option>
                                            <option value="1">Issued</option>
                                            <option value="2">Returned</option>
                                            <option value="4">Cancelled</option>
                                            <option value="5">Date Expired book</option>
                                        </select>

                                    </div>

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10">Issue From</label>--}}
                                    {{--                                        <input type="date" class="col-md-10 mt-2" name="from_issue_date">--}}
                                    {{--                                    </div>--}}

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10">Issue To</label>--}}
                                    {{--                                        <input type="date" class="col-md-10 mt-2" name="to_issue_date">--}}
                                    {{--                                    </div>--}}

                                </div>

                                <div class="form-inline mt-2 col-md-12">


                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10">Return From</label>--}}
                                    {{--                                        <input type="date" class="col-md-10 mt-2" name="from_return_date">--}}
                                    {{--                                    </div>--}}

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10">Return To</label>--}}
                                    {{--                                        <input type="date" class="col-md-10 mt-2" name="to_return_date">--}}
                                    {{--                                    </div>--}}

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10">Payment From</label>--}}
                                    {{--                                        <input type="date" class="col-md-10 mt-2" name="from_payment_date">--}}
                                    {{--                                    </div>--}}

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10">Payment To</label>--}}
                                    {{--                                        <input type="date" class="col-md-10 mt-2" name="to_payment_date">--}}
                                    {{--                                    </div>--}}

                                </div>


                                <div class="form-inline mt-2 col-md-12">


                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10 mb-2">Charge Status</label>--}}
                                    {{--                                        <select  name="charge_status" class="form-control col-md-10">--}}
                                    {{--                                            <option value="">Select</option>--}}
                                    {{--                                            <option value="1">Paid</option>--}}
                                    {{--                                            <option value="0">Unpaid</option>--}}
                                    {{--                                        </select>--}}
                                    {{--                                    </div>--}}

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10 mb-2">Type</label>--}}
                                    {{--                                        <select required name="type" class="form-control col-md-10">--}}
                                    {{--                                            <option value="">Select</option>--}}
                                    {{--                                            <option value="0">Student</option>--}}
                                    {{--                                            <option value="1">Teacher</option>--}}

                                    {{--                                        </select>--}}
                                    {{--                                    </div>--}}

                                    {{--                                    <div class="form-group col-md-3">--}}
                                    {{--                                        <label class="col-md-10 mb-2">Expected Return date Expired</label>--}}
                                    {{--                                        <select  name="expired_date" class="form-control col-md-10">--}}
                                    {{--                                            <option value="1">Expired  Date book</option>--}}
                                    {{--                                        </select>--}}
                                    {{--                                    </div>--}}

                                </div>


                                <div class="form-inline mt-2 col-md-12">


                                </div>

                                <div class="d-flex justify-content-center mt-4">
                                    <input type="submit" class="btn btn-primary" value="Search">
                                </div>


                            </form>


                            <!--<h4 class="mt-5">Student Bookings</h4>-->
                            <!--<table class="table table-striped">-->
                            <!--    <thead>-->
                            <!--    <tr>-->
                            <!--        <th>#</th>-->
                            <!--        <th>Book Name</th>-->
                            <!--        <th>Student Registration Number</th>-->
                            <!--        <th>Requested Date</th>-->
                            <!--        <th>Issue Date</th>-->
                            <!--        <th>Return Date</th>-->
                            <!--        <th>Payment Date</th>-->
                            <!--        <th>Status</th>-->


                            <!--    </tr>-->
                            <!--    </thead>-->
                            <!--    <tbody>-->
                        <!--    @php($i = 1)-->
                        <!--    @foreach($studentBookings as $booking)-->
                            <!--        <tr>-->
                        <!--            <td>{{$i++}}</td>-->
                        <!--            <td>{{$booking->book_name}}</td>-->
                        <!--            <td>{{$booking->reg_no}}</td>-->
                        <!--            <td>{{$booking->request_date}}</td>-->
                        <!--            <td>{{$booking->issue_date}}</td>-->
                        <!--            <td>{{$booking->return_date}}</td>-->
                        <!--            <td>{{$booking->payment_date}}</td>-->
                            <!--            <td>-->
                        <!--                @if($booking->status==0)-->
                            <!--                    Pending-->
                        <!--                @elseif($booking->status==1)-->
                            <!--                    Received-->
                        <!--                @elseif($booking->status==2)-->
                            <!--                    Return-->
                        <!--                @elseif($booking->status==3)-->
                            <!--                    Returned    -->
                        <!--                @elseif($booking->status==4)-->
                            <!--                    Cancelled-->
                            <!--                @endif-->
                            <!--            </td>-->

                            <!--        </tr>-->
                            <!--    @endforeach-->
                            <!--    </tbody>-->
                            <!--</table>-->

                            <!--<h4 class="mt-5">Teacher Bookings</h4>-->
                            <!--<table class="table table-striped">-->
                            <!--    <thead>-->
                            <!--    <tr>-->
                            <!--        <th>#</th>-->
                            <!--        <th>Book Name</th>-->
                            <!--        <th>Teacher Name</th>-->
                            <!--        <th>Requested Date</th>-->
                            <!--        <th>Issue Date</th>-->
                            <!--        <th>Return Date</th>-->
                            <!--        <th>Payment Date</th>-->
                            <!--        <th>Status</th>-->


                            <!--    </tr>-->
                            <!--    </thead>-->
                            <!--    <tbody>-->
                        <!--    @php($i = 1)-->
                        <!--    @foreach($teacherBookings as $booking)-->
                            <!--        <tr>-->
                        <!--            <td>{{$i++}}</td>-->
                        <!--            <td>{{$booking->book_name}}</td>-->
                        <!--            <td>{{$booking->name}}</td>-->
                        <!--            <td>{{$booking->request_date}}</td>-->
                        <!--            <td>{{$booking->issue_date}}</td>-->
                        <!--            <td>{{$booking->return_date}}</td>-->
                        <!--            <td>{{$booking->payment_date}}</td>-->
                            <!--            <td>-->
                        <!--                @if($booking->status==0)-->
                            <!--                    Pending-->
                        <!--                @elseif($booking->status==1)-->
                            <!--                    Received-->
                        <!--                @elseif($booking->status==2)-->
                            <!--                    Return-->
                        <!--                @elseif($booking->status==3)-->
                            <!--                    Returned    -->
                        <!--                @elseif($booking->status==4)-->
                            <!--                    Cancelled-->
                            <!--                @endif-->
                            <!--            </td>-->

                            <!--        </tr>-->
                            <!--    @endforeach-->
                            <!--    </tbody>-->
                            <!--</table>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).on("keyup", ".student_id", function () {

            var api = getUrl();
            var vv = $(this);
            var key = $(this).val();

            const method = "POST";
            const url = api + "autocomplete/fetch-student";
            const data = {
                query: key
            };
            ajaxSetup(function (data) {

                $(vv).autocomplete({
                    source: data,
                    select: function (e, ui) {
                        var stid =ui.item.student_id;
                        // console.log(stid);
                        $('.hiddenstudent_id').val(stid)

                    }
                });

            }, method, url, data);


        });
    </script>

    <script>

        $(document).on("keyup", ".book_id", function () {

            var api = getUrl();
            var vv = $(this);
            var key = $(this).val();

            const method = "POST";
            const url = api + "autocomplete/book";
            const data = {
                query: key
            };
            ajaxSetup(function (data) {

                $(vv).autocomplete({
                    source: data,
                    select: function (e, ui) {
                        var id =ui.item.book_id;
                        // console.log(id);
                        $('.hiddenbook_id').val(id)
                    }
                });

            }, method, url, data);


        });

    </script>


    <script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/search.js"></script>
    <script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/api.js"></script>
    <script type="text/JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" ></script>

@endsection


