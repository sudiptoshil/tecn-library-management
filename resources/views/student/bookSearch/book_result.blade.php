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
                            <h5 class="text-bold card-title">Book Result</h5>
                            <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>Serial</th>
                                    <th>Book Name</th>
                                    <th>Publication Name</th>
                                    <th>Category Name</th>
                                    <th>Subcategory Name</th>
                                    <th>Author Name</th>
                                    <th>Pdf/Image</th>
                                    <th></th>
                                    <th></th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                @php($i = 1)
                                @foreach($books as $v_book)
                                    <tbody>

                                    <tr>
                                        <td>{{$i++}}</td>
                                        <td>{{$v_book->book_name}}</td>
                                        @if($v_book->publication)
                                            <td>{{$v_book->publication->publication_name}}</td>
                                        @else
                                            <td style="color:red">Not Found</td>
                                        @endif
                                        @if($v_book->category)
                                            <td>{{$v_book->category->name}}</td>
                                        @else
                                            <td style="color:red">Not Found</td>
                                        @endif
                                        @if($v_book->subcategory)
                                            <td>{{$v_book->subcategory->sub_cat_name}}</td>
                                        @else
                                            <td style="color:red">Not Found</td>
                                        @endif
                                        @if($v_book->author)
                                            <td>{{$v_book->author->author_name}}</td>
                                        @else
                                            <td style="color:red">Not Found</td>
                                        @endif
                                        @if($v_book->book_file)
                                            <td>
                                                {{--                                                <iframe src="{{'public/book-file/'.$v_book->book_file}}" width="40%" height="40%"></iframe>--}}
                                                <iframe src="{{asset($v_book->book_file)}}"></iframe>

                                            </td>
                                            <td><a href="{{route('show-pdf',['id'=>$v_book->id])}}"
                                                   target="_blank">View</a></td>
                                            {{--                                            <td><a href="{{route('download-pdf',['book_file'=>$v_book->book_file])}}" target="_blank">download</a>--}}
                                            </td>
                                        @else
                                            <td>Not Found</td>
                                        @endif
                                        <td>

                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary modalB" data-toggle="modal"
                                                    data-target="#exampleModal" data-x={{$v_book->id}}>
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
                                                                  action="{{route('confirm-book-request')}}"
                                                                  method="post">
                                                                @csrf
                                                                <input type="hidden" id="bookIdInput" name="book_id">
                                                                <input type="hidden" name="student_id"
                                                                       value="{{Session::get('student_id')}}">
                                                                <input type="hidden" value="{{$v_book->id}}">
                                                                <!--<h2></h2>-->
                                                                <p>Date: <input type="text" name="x_date" required=""
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

                                    </tbody>
                                @endforeach
                            </table>

                            <div class="d-flex justify-content-center">
                                {{--                                {{ $books->links() }}--}}
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
