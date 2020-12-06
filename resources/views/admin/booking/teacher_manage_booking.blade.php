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

                            <form action="{{route('teacher-searched-booking-list')}}" method="get">
                                @csrf

                                <div class="form-inline col-md-12">

                                    <div class="form-group col-md-3">

                                        <input type="text" class="form-control teacher_id" name="Staff Name" placeholder="Staff name">
                                        <input type="hidden" class="hiddenteacher_id" name="teacher_id">
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

                                </div>

                                <div class="form-inline mt-2 col-md-12">

                                </div>


                                <div class="form-inline mt-2 col-md-12">
                                </div>


                                <div class="form-inline mt-2 col-md-12">


                                </div>

                                <div class="d-flex justify-content-center mt-4">
                                    <input type="submit" class="btn btn-primary" value="Search">
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).on("keyup", ".teacher_id", function () {

            var api = getUrl();
            var vv = $(this);
            var key = $(this).val();

            const method = "POST";
            const url = api + "autocomplete/fetch";
            const data = {
                query: key
            };
            ajaxSetup(function (data) {

                $(vv).autocomplete({
                    source: data,
                    select: function (e, ui) {
                        var stid =ui.item.teacher_id;
                        // console.log(stid);
                        $('.hiddenteacher_id').val(stid)

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


