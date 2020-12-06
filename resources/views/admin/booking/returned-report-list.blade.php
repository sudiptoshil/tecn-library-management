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
                            <h2 class="page-title text-center">Returned Reports</h2>
                            <h3 style="color:black" align="center">{{Session::get('message')}}</h3>


                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Book Name</th>
                                    <th>Student Reg No</th>
                                    <th>Student Name</th>
                                    <th>Request Date</th>
                                    <th>Issue Date</th>
                                    <th>Return Date</th>
                                    <th>Action</th>


                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($reports as $report)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$report->book_name}}</td>
                                        <td>{{$report->reg_no}}</td>
                                        <td>{{$report->request_date}}</td>
                                        <td>{{$report->issue_date}}</td>
                                        <td>{{$report->return_date}}</td>
                                        <td>

                                            @if($report->status==2)


                                                <a href="#" class="btn-sm btn-success issue modalButton" data-toggle="modal"
                                                   data-target="#acceptModal" data-report-id={{$report->id}} data-report-book-id={{$report->book_id}}>Accept</a>
                                            @endif


                                        </td>
                                    </tr>

                                    <!--Accept Modal -->
                                    <div class="modal fade" id="acceptModal" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">


                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <form action="{{route('accept-returned-report-student')}}"
                                                      method="post">
                                                    @csrf
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Are you sure to
                                                            cancel?</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">


                                                        <input type="hidden" id="reportIdInput" name="id">
                                                        <input type="hidden" id="reportBookIdInput" name="book_id">

                                                        <select name="percent" class="form-control">

{{--                                                            <option value="100">No charge</option>--}}
                                                            <option selected disabled>No charge</option>
                                                            @foreach($charges as $charge)
                                                                <option
                                                                    value="{{ $charge->percent }}">{{ $charge->percent }}
                                                                    %
                                                                </option>
                                                            @endforeach
                                                        </select>

                                                        <label class="mt-4">Manual Amount </label>
                                                        <input type="text" name="chargeManual"> BDT

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">Close
                                                        </button>
                                                        <button type="submit" class="btn btn-primary">Save changes
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>



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


    <script>

        $('.modalButton').click(function(){
            var reportId = $(this).attr('data-report-id');
            $("#reportIdInput").val(reportId);
            
            var reportBookId = $(this).attr('data-report-book-id');
            $("#reportBookIdInput").val(reportBookId);

        });



    </script>


@endsection
