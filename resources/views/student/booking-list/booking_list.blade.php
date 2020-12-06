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
                        <h5 class="text-bold card-title">All Requested Books</h5>
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Request Date</th>
                                    <th>Expected Return Date</th>
                                    <th>Issue Date</th>
                                    <th>Return Date</th>
                                    <th>Returned Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($book as $v_book)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_book->book_name}}</td>
                                    <td>{{$v_book->request_date}}</td>
                                    <td>{{$v_book->x_date}}</td>
                                    <td>{{$v_book->issue_date}}</td>
                                    <td>{{$v_book->return_date}}</td>
                                    <td>{{$v_book->returned_date}}</td>
                                    @if($v_book->status == 0)
                                    <td style="color:red"><u><b>Pending</b></u></td>
                                    @elseif($v_book->status == 2)
                                    <td style="color:blue"><u><b>Request For Returned</b></u></td>
                                    @elseif($v_book->status == 1)
                                    <td style="color:green"><u><b>Accepted</b></u></td>
                                    @elseif($v_book->status == 4)
                                    <td style="color:red"><u><b>Canceled</b></u></td>
                                    @elseif($v_book->status == 3)
                                    <td style="color:red"><u><b>Returned </b></u></td>
                                    @else
                                    <td></td>
                                    @endif
                                <td>
                                    @if($v_book->status == 2)
                                    <h2></h2>
                                    @elseif($v_book->status == 0)
                                    <h2></h2>
                                    @elseif($v_book->status == 4)
                                    <h2></h2>
                                    @elseif($v_book->status == 3)
                                    <h2></h2>
                                    @elseif($v_book->status == 1)
                                    <a onclick=" return checkReturn()" href="{{route('return-book',['id' => $v_book->id])}}" type="button" class="btn btn-primary">Return</a>
                                    @endif
                                </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        
                        <div class="d-flex justify-content-center">
                                {{ $book->links() }}
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/favouriteBooks.js"></script>
@endsection