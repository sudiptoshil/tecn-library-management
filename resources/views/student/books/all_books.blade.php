@extends('student.master')
@section('body')
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <h4 class="page-title">all books</h4>
            </div>
        </div>
        <div class="row">

            <div class="col-lg-12">
                <div class="card-box">
                    <div class="card-block">
                        <h5 class="text-bold card-title">all books</h5>
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>book name</th>
                                    <th>publication name</th>
                                    <th>author name</th>
                                    <!--<th>Status</th>-->
                                    <!--<th>action</th>-->

                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($books as $v_book)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_book->book_name}}</td>
                                    <td>{{$v_book->publication_name}}</td>
                                    <td>{{$v_book->author_name}}</td>
                                <td>
                                 
                                </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/favouriteBooks.js"></script>
@endsection
