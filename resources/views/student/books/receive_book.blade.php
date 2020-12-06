@extends('student.master')
@section('body')
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <h4 class="page-title">receive books</h4>
            </div>
        </div>
        <div class="row">

            <div class="col-lg-12">
                <div class="card-box">
                    <div class="card-block">
                        <h5 class="text-bold card-title">receive books</h5>
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>BOOK NAME</th>
                                    <th>STUDENT NAME</th>
                                    <th>STATUS</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($books as $v_book)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_book->book_name}}</td>
                                    <td>{{$v_book->name}}</td>
                                    @if($v_book->status == 1)
                                    <td style="color:red"><b><u>received</u></b></td>
                                    @endif
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
