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


                            <table class="table table-striped table-responsive">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Code</th>
                                    <th>ISBN</th>
                                    <th>Accession No</th>
                                    <th>Edition</th>
                                    <th>Copy</th>
                                    <th>Author</th>
                                    <th>Department</th>
                                    <th>Publication</th>
                                    <th>Language</th>
                                    <th>Category</th>
                                    <th>SubCategory</th>
                                    <th>Rack</th>
                                    <th>Price</th>
                                    <th>Enlisted Date</th>
                                    <th>Condition</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 1)
                                @if(!$books->isEmpty())
                                    @foreach($books as $book)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$book->book_name}}</td>
                                            <td>{{$book->book_code}}</td>
                                            <td>{{$book->isbn_no}}</td>
                                            <td>{{$book->accession_no}}</td>
                                            <td>{{$book->edition}}</td>
                                            <td>{{$book->copy}}</td>
                                            <td>{{$book->author_name}}</td>
                                            <td>{{$book->department_name}}</td>
                                            <td>{{$book->publication_name}}</td>
                                            <td>{{$book->language}}</td>
                                            <td>{{$book->name}}</td>
                                            <td>{{$book->sub_cat_name}}</td>
                                            <td>{{$book->no}}</td>
                                            <td>{{$book->price}}</td>
                                            <td>{{$book->enlisted_date}}</td>
                                            <td>{{$book->condition}}</td>

                                            <td>
                                                @if($book->book_status == 0)
                                                    Available
                                                @elseif($book->book_status == 1)
                                                    Removed
                                                @elseif($book->book_status == 2)
                                                    Lost
                                                @elseif($book->book_status == 3)
                                                    Occupied
                                                @endif
                                            </td>

                                            <td>
                                                <a href="{{route('edit-book',['id'=>$book->id])}}" class="ml-2">Edit</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @else
                                    <h3 class="text-center">No Books Found</h3>
                                @endif
                                </tbody>
                            </table>
                            <!--<div class="d-flex justify-content-center mt-4">-->
                            <!--    {{--{{$books->links()}}--}}-->
                            <!--</div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





@endsection
