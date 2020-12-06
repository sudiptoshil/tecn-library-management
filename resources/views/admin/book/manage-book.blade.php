@extends('admin.master')
@section('body')

    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                </div>
            </div>
        <!--<div class="d-flex justify-content-end">
             <a type="button" style="margin-bottom:2%" href="{{route('add-book')}}" class=" btn btn-primary">Add Book </a>
             </div>-->
            <div class="row">


                <div class="col-lg-12">
                    <div class="card-box">
                        <div class="card-block">

                            <div class="d-flex justify-content-end">
                                <a type="button" style="margin-bottom:2%" href="{{route('add-book')}}"
                                   class=" btn btn-primary">Add Book </a>
                            </div>

                            <h3 style="color:black" align="center">{{Session::get('message')}}</h3>

                            <form action="{{route('searched-book-list-admin')}}" method="get">
                                @csrf

                                <div class="form-inline col-md-12">
                                    <div class="form-group col-md-3">
                                        <input class="col-md-10 form-control" type="number" name="code"
                                               placeholder="Code">

                                    </div>
                                    <div class="form-group col-md-3">
                                        <input type="text" name="book_name" placeholder="Book Name"
                                               class="form-control col-md-10">

                                    </div>
                                    <div class="form-group col-md-3">
                                        <input type="text" name="publisher_name" placeholder="Publisher Name"
                                               class="form-control col-md-10">

                                    </div>
                                    <div class="form-group col-md-3">
                                        <input type="text" name="author_name" placeholder="Author Name"
                                               class="form-control col-md-10">

                                    </div>

                                </div>
                                <div class="form-inline mt-3 col-md-12">
                                    <div class="form-group col-md-3">
                                        <select class="form-control col-md-10" name="cat" id="cat">
                                            <option selected disabled>
                                                Category
                                            </option>
                                            @foreach($categories as $category)
                                                <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <select class="form-control col-md-10" name="sub_cat" id="sub_cat">
                                            <option selected disabled>
                                                Sub Category
                                            </option>
                                        </select>


                                    </div>
                                    <div class="form-group col-md-3">
                                        <select class="form-control col-md-10" name="department_id">
                                            <option value="0">
                                                Department
                                            </option>
                                            @foreach($department as $v_dept)
                                                <option value="{{ $v_dept->id }}">{{ $v_dept->department_name}}</option>
                                            @endforeach
                                        </select>


                                    </div>

                                    <div class="form-group col-md-3">
                                        <select class="form-control col-md-10" name="rack">
                                            <option disabled selected>Select Rack</option>
                                            @foreach($racks as $rack)

                                                <option value="{{$rack->id}}">{{$rack->no}}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                    <div class="form-group col-md-3">
                                        <select class="form-control col-md-10" name="book_status">
                                            <option disabled selected>Select Status</option>

                                            <option value="0">Available</option>
                                            <option value="3">Occupied</option>
                                            <option value="2">Lost</option>
                                            <option value="1">Removed</option>
                                        </select>

                                    </div>
                                </div>
                                <div class="form-inline col-md-12 mt-3">

                                    <div class="form-group col-md-3">
                                        {{--                                        <label class="col-md-10">Enlisted Date</label>--}}

                                        <input type="date" class="col-md-10 form-control" name="from_enlisted_date">
                                    </div>
                                    <div class="form-group col-md-3">


                                        <input type="date" class="col-md-10 form-control" name="to_enlisted_date">

                                    </div>
                                    <div class="form-group col-md-3">
                                        <input type="text" name="accession_no" placeholder="Accession Number"
                                               class="form-control col-md-10">

                                    </div>

                                    <div class="form-group col-md-3">
                                        <input type="text" name="issn_no" placeholder="Issn No"
                                               class="form-control col-md-10">

                                    </div>


                                </div>
                            {{--                                <button id="search" name="search" class="btn btn-primary mb-2">Search</button>--}}

                        </div>
                        <div class="d-flex justify-content-center mt-4">
                            <button type="submit" class="btn btn-primary">Search</button>
                        </div>

                        </form>

                        <!--<table class="table table-striped table-responsive">-->
                        <!--    <thead>-->
                        <!--    <tr>-->
                        <!--        <th>#</th>-->
                        <!--        <th>Name</th>-->
                        <!--        <th>Code</th>-->
                        <!--        <th>ISBN</th>-->
                        <!--        <th>Edition</th>-->
                        <!--        <th>Copy</th>-->
                        <!--        <th>Author</th>-->
                        <!--        <th>Publication</th>-->
                        <!--        <th>Language</th>-->
                        <!--        <th>Category</th>-->
                        <!--        <th>SubCategory</th>-->
                        <!--        <th>Rack</th>-->
                        <!--        <th>Price</th>-->
                        <!--        <th>Enlisted Date</th>-->
                        <!--        <th>Condition</th>-->
                        <!--        <th>Status</th>-->
                        <!--        <th>Action</th>-->

                        <!--    </tr>-->
                        <!--    </thead>-->
                        <!--    <tbody>-->
                    <!--    @php($i = 1)-->
                    <!--    @foreach($books as $book)-->
                        <!--        <tr>-->
                    <!--            <td>{{$i++}}</td>-->
                    <!--            <td>{{$book->book_name}}</td>-->
                    <!--            <td>{{$book->code}}</td>-->
                    <!--            <td>{{$book->isbn}}</td>-->
                    <!--            <td>{{$book->edition}}</td>-->
                    <!--            <td>{{$book->copy}}</td>-->
                    <!--            <td>{{$book->author_name}}</td>-->
                    <!--            <td>{{$book->publication_name}}</td>-->
                    <!--            <td>{{$book->language}}</td>-->
                    <!--            <td>{{$book->name}}</td>-->
                    <!--            <td>{{$book->sub_cat_name}}</td>-->
                    <!--            <td>{{$book->no}}</td>-->
                    <!--            <td>{{$book->price}}</td>-->
                    <!--            <td>{{$book->enlisted_date}}</td>-->
                    <!--            <td>{{$book->condition}}</td>-->
                        <!--            <td>-->
                    <!--                @if($book->book_status == 0)-->
                        <!--                    Available-->
                    <!--                    @elseif($book->book_status == 1)-->
                        <!--                    Removed-->
                    <!--                    @elseif($book->book_status == 2)-->
                        <!--                    Lost-->
                    <!--                @elseif($book->book_status == 4)-->
                        <!--                    Occupied-->
                        <!--                @endif-->
                        <!--            </td>-->
                        <!--            <td>-->
                    <!--                <a href="{{route('edit-book',['id'=>$book->id])}}" class="ml-2">Edit</a>-->
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


    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('select[name="cat"]').on('change', function () {
                var catID = jQuery(this).val();


                if (catID) {
                    jQuery.ajax({
                        url: '/library/getSubCats/' + catID,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            jQuery('select[name="sub_cat"]').empty();
                            $('select[name="sub_cat"]').append('<option value="0' + catID + '"> All Subcategories </option>');
                            jQuery.each(data, function (key, value) {
                                $('select[name="sub_cat"]').append('<option value="' + key + '">' + value + '</option>');

                            });

                        }

                    });
                } else {
                    $('select[name="sub_cat"]').empty();
                    $('select[name="sub_cat"]').append('<option value="0' + catID + '"> All Subcategories </option>');
                }
            });
        });
    </script>

    <script type="text/javascript">
        $("#search").on("click", function () {
            var link = document.getElementById("sub_cat").value;


            $.ajax({
                url: window.location.href = "/getBooks/" + link
            });
        });
    </script>

    <script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/search.js"></script>
    <script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/api.js"></script>
    <script type="text/JavaScript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>



@endsection










