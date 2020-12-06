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
                            <h4 class="text-center page-title">New Request</h4>
                            <h3 style="color:black" align="center">{{Session::get('message')}}</h3>


                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Book Name</th>
                                    <th>Student Reg No</th>
                                    <th>Student Name</th>
                                    <th>Request Date</th>
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
                                        <td>{{$report->name}}</td>
                                        <td>{{$report->request_date}}</td>
                                        <td class="d-flex">

                                            <a href="#" class="btn btn-success"
                                               onclick="event.preventDefault();
                                                   var check = confirm('Are you sure?');
                                                   if(check){
                                                   document.getElementById('issueReport'+'{{$report->id}}').submit();
                                                   }">Issue</a>

                                            <!--<a href="#" class="btn-sm btn-danger modalButton ml-1"-->
                                            <!--   data-report-id={{$report->id}}    data-report-book-id={{$report->book_id}} data-toggle="modal"-->
                                            <!--   data-target="#exampleModal">Cancel</a>-->
                                            
                                            <a href="#" class="btn-sm btn-danger modalButton ml-1"
                                               data-report-id={{$report->id}} data-report-book-id={{$report->book_id}} data-toggle="modal"
                                               data-target="#exampleModal">Cancel</a>


                                            <form id="issueReport{{$report->id}}"
                                                  action="{{route('issue-current-report-student')}}" method="post">
                                                @csrf

                                                <input type="hidden" name="id" value="{{$report->id}}">
                                                

                                            </form>

                                        </td>
                                    </tr>




                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <form action="{{route('cancel-current-report-student')}}" method="post">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Are you sure to
                                                            cancel?</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        @csrf
                                                        <input type="hidden" id="reportIdInput" name="id">
                                                        <input type="hidden" id="reportBookIdInput" name="book_id">
                                                        <textarea required name="reason" placeholder="Enter reason here"
                                                                  style="min-width: 100%"></textarea>
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

         $('.modalButton').click(function () {
            var reportId = $(this).attr('data-report-id');
            $("#reportIdInput").val(reportId);

            var reportBookId = $(this).attr('data-report-book-id');
            $("#reportBookIdInput").val(reportBookId);

        });
        
       


    </script>




@endsection
