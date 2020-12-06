@extends('teacher.master')
@section('body')
    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="page-title">Latest Books</h4>
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
                                    <th>Name</th>
                                    <th>Edition</th>
                                    <th>Author</th>
                                    <th>Publication</th>
                                    <th>Language</th>
                                    <th>Enlisted Date</th>
                                    <th>Condition</th>


                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @foreach($latestBooks as $book)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$book->book_name}}</td>
                                        <td>{{$book->edition}}</td>
                                        <td>{{$book->author->author_name}}</td>
                                        <td>{{$book->publication->publication_name}}</td>
                                        <td>{{$book->language}}</td>
                                        <td>{{$book->enlisted_date}}</td>
                                        <td>{{$book->condition}}</td>
                                        <td>

                                            <!-- Button trigger modal -->

                                            <button type="button" class="btn btn-primary modalB" data-toggle="modal"
                                                    data-target="#exampleModal" data-x={{$book->id}}>
                                                Request
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Select Return
                                                                Date</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>

                                                        <div class="modal-body">
                                                            <form id="bookSubmit"
                                                                  action="{{route('teacher-confirm-book-request')}}"
                                                                  method="post">
                                                                @csrf
                                                                <input type="hidden" id="bookIdInput" name="book_id">

                                                                <input type="hidden" name="teacher_id"
                                                                       value="{{Session::get('teacher_id')}}">
                                                                <input type="hidden" value="{{$book->id}}">
                                                                <!--<h2></h2>-->
                                                                <p>Date: <input type="text" name="x_date"
                                                                                id="datepicker" class="form-control"
                                                                                required></p>
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Close
                                                            </button>
                                                            <button type="button"
                                                                    onclick="event.preventDefault();document.getElementById('bookSubmit').submit();"
                                                                    class="btn btn-primary">Save Changes
                                                            </button>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <!--bootrap date picker end-->
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <div class="d-flex justify-content-center">
                                {{ $latestBooks->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
    <script>
        $('.modalB').click(function () {
            var reportId = $(this).attr('data-x');
            $("#bookIdInput").val(reportId);

        });

    </script>


@endsection
