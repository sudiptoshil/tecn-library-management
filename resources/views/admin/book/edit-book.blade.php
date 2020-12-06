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
                        <h4 class="page-title text-center">Edit Book</h4>
                        <h3 style="color:green" align="center">{{Session::get('message')}}</h3>


                        <form name="editBookForm" class="form-horizontal" action="{{route('update-book')}}"
                              method="POST">
                            @csrf


                            <!--new-->

                              <div class="row">

                                <div class="col form-group">
                                    <label class="">Book Name</label>

{{--                                  <input class="form-control" type="hidden" name="id" value="{{$book->isbn}}">--}}

                                    <input class="form-control" type="text" name="book_name" value="{{$book->book_name}}"
                                           placeholder="Book name" class="form-control">
                                    <input type="hidden" name="book_id" value="{{$book->id}}"
                                           placeholder="Book id" class="form-control">
                                </div>

                                <div class="col form-group">

                                <label>Edition</label>
                                    <input class="form-control" type="text" name="edition" value="{{$book->edition}}"
                                           placeholder="Enter Edition No" class="form-control">

                                </div>



                                <!--<div class="col form-group"> -->

                                <!--<label class="">Book Code</label>-->

                                <!--    <input class="form-control" type="number" name="code" value="{{$book->code}}"-->
                                <!--           placeholder="Enter book code" class="form-control">-->
                                <!--</div>-->

                              </div>



                              <!--<div class="row mt-4">-->

                              <!--  <div class="col form-group">-->
                              <!--      <label >ISBN</label>-->

                              <!--    <input class="form-control" type="number" name="isbn" value="{{$book->isbn}}" placeholder="Enter ISBN"-->
                              <!--             class="form-control">-->

                              <!--  </div>-->



                              <!--</div>-->

                              <div class="row mt-4">

                                <!--<div class="col form-group">-->
                                <!--    <label >No of Copies</label>-->

                                <!--  <input class="form-control" type="number" name="copy" value="{{$book->copy}}" placeholder="Enter copies"-->
                                <!--           class="form-control">-->

                                <!--</div>-->



                                <div class="col form-group">

                                <label>Author Name</label>

                                    <select name="author_id" class="form-control">
                                        @foreach($authors as $author)
                                            <option value="{{ $author->id }}">{{ $author->author_name }}</option>
                                        @endforeach
                                    </select>

                                </div>


                              </div>


                              <div class="row mt-4">

                                <div class="col form-group">
                                    <label >Publication</label>

                                  <select name="publication_id" class="form-control">
                                        @foreach($publications as $publication)
                                            <option
                                                value="{{ $publication->id }}">{{ $publication->publication_name }}</option>
                                        @endforeach
                                    </select>

                                </div>



                                <div class="col form-group">

                                <label>Language</label>

                                    <input class="form-control" type="text" name="language" value="{{$book->language}}"
                                           placeholder="Enter Language Name" class="form-control">

                                </div>


                              </div>


                              <div class="row mt-4">

                                <div class="col form-group">
                                    <label >Category</label>

                                  <select name="category_id" class="form-control">
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>

                                </div>



                                <div class="col form-group">

                                <label>SubCategory</label>

                                    <select name="subcategory_id" class="form-control">
                                        @foreach($subCategories as $subCategory)
                                            <option
                                                value="{{ $subCategory->id }}">{{ $subCategory->sub_cat_name }}</option>
                                        @endforeach
                                    </select>

                                </div>


                              </div>


                              <div class="row mt-4">

                                <div class="col form-group">
                                    <label >Rack</label>

                                  <select name="rack" class="form-control">
                                        @foreach($racks as $rack)
                                            <option value="{{ $rack->id }}">{{ $rack->no }}</option>
                                        @endforeach
                                    </select>

                                </div>



                                <div class="col form-group">

                                <label>Price</label>

                                    <input class="form-control" type="text" name="price" value="{{$book->price}}" placeholder="Enter Price"
                                           class="form-control">

                                </div>


                              </div>

                              <div class="row mt-4">

                                <div class="col form-group">
                                    <label >Enlisted Date</label>

                                  <input class="form-control" type="date" name="enlisted_date" value="{{$book->enlisted_date}}"
                                           placeholder="Enter Date" class="form-control">

                                </div>




                              </div>


                               <div class="row mt-4">

                                <div class="col form-group">
                                    <label >Condition</label>

                                    <input class="form-control" type="text" name="condition" value="{{$book->condition}}"
                                           placeholder="Enter Condition" class="form-control">

                                </div>



                                <div class="col form-group">

                                <label>Status</label>

                                    <select id="book_status" name="book_status" class="form-control">
                                        <option value="0">Exist</option>
                                        <option value="1">Removed</option>
                                        <option value="2">Lost</option>
                                    </select>

                                </div>


                              </div>


                              <div class="row mt-4">

                                <div class="col form-group">
                                    <label style="display: none" id="reasonLabel">Reason</label>

                                    <input class="form-control" style="display: none" id="reasonInput" type="text" name="reason"
                                           class="form-control">

                                </div>






                              </div>

                              <div class="d-flex justify-content-center">
                                      <input type="submit" value="Update" class="btn btn-primary">
                                      </div>
                            <!--  <div class="row mt-2">-->

                            <!--    <div class="col form-group">-->

                            <!--        <button type="reset" class="btn btn-primary ml-2">Cancel</button>-->
                            <!--    </div>-->
                            <!--</div>-->
                            <!--end of new-->




                            <!--old-->

                            <!--<div class="form-group row">
                                <label class="control-label col-lg-2">Book Name</label>
                                <div class="col-md-10">
                                    <input type="hidden" name="id" value="{{$book->id}}">
                                    <input type="text" name="book_name" value="{{$book->book_name}}"
                                           placeholder="Enter book name" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Book Code</label>
                                <div class="col-md-10">
                                    <input type="number" name="code" value="{{$book->code}}"
                                           placeholder="Enter book code" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">ISBN</label>
                                <div class="col-md-10">
                                    <input type="number" name="isbn" value="{{$book->isbn}}" placeholder="Enter ISBN"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Edition</label>
                                <div class="col-md-10">
                                    <input type="text" name="edition" value="{{$book->edition}}"
                                           placeholder="Enter Edition No" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">No of Copies</label>
                                <div class="col-md-10">
                                    <input type="number" name="copy" value="{{$book->copy}}" placeholder="Enter copies"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Author Name</label>
                                <div class="col-md-10">
                                    <select name="author_id" class="form-control">
                                        @foreach($authors as $author)
                                            <option value="{{ $author->id }}">{{ $author->author_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Publication</label>
                                <div class="col-md-10">
                                    <select name="publication_id" class="form-control">
                                        @foreach($publications as $publication)
                                            <option
                                                value="{{ $publication->id }}">{{ $publication->publication_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Language</label>
                                <div class="col-md-10">
                                    <input type="text" name="language" value="{{$book->language}}"
                                           placeholder="Enter Language Name" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Category</label>
                                <div class="col-md-10">
                                    <select name="category_id" class="form-control">
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">SubCategory</label>
                                <div class="col-md-10">
                                    <select name="subcategory_id" class="form-control">
                                        @foreach($subCategories as $subCategory)
                                            <option
                                                value="{{ $subCategory->id }}">{{ $subCategory->sub_cat_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Rack</label>
                                <div class="col-md-10">
                                    <select name="rack" class="form-control">
                                        @foreach($racks as $rack)
                                            <option value="{{ $rack->id }}">{{ $rack->no }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Price</label>
                                <div class="col-md-10">
                                    <input type="text" name="price" value="{{$book->price}}" placeholder="Enter Price"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Enlisted Date</label>
                                <div class="col-md-10">
                                    <input type="date" name="enlisted_date" value="{{$book->enlisted_date}}"
                                           placeholder="Enter Date" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Condition</label>
                                <div class="col-md-10">
                                    <input type="text" name="condition" value="{{$book->condition}}"
                                           placeholder="Enter Condition" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-lg-2">Status</label>
                                <div class="col-md-10">

                                    <select id="book_status" name="book_status" class="form-control">
                                        <option value="0">Exist</option>
                                        <option value="1">Removed</option>
                                        <option value="2">Lost</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label style="display: none" id="reasonLabel" class="control-label col-lg-2">Reason</label>
                                <div class="col-md-10">
                                    <input required style="display: none" id="reasonInput" type="text" name="reason"
                                           class="form-control">
                                </div>
                            </div>


                            {{--<div class="form-group row">
                                <label class="control-label col-lg-2">Show</label>
                                <div class="col-md-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" {{$book->show==1 ? 'checked' : '' }} value="1" name="show"> Yes
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" {{$book->show==0 ? 'checked' : '' }} value="0" name="show"> No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-lg-2">Removed</label>
                                <div class="col-md-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" {{$book->removed==1 ? 'checked' : '' }} value="1" name="removed"> Yes
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" {{$book->removed==0 ? 'checked' : '' }} value="0" name="removed"> No
                                        </label>
                                    </div>
                                </div>
                            </div>--}}
                            <div class="form-group row">
                                <label class="control-label col-lg-2"></label>
                                <div class="col-md-10">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                    <button type="reset" class="btn btn-primary">cancel</button>
                                </div>
                            </div>-->

                            <!--end of old-->



                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.forms['editBookForm'].elements['category_id'].value = '{{ $book->category_id }}';
        document.forms['editBookForm'].elements['subcategory_id'].value = '{{ $book->subcategory_id }}';
        document.forms['editBookForm'].elements['author_id'].value = '{{ $book->author_id }}';
        document.forms['editBookForm'].elements['publication_id'].value = '{{ $book->publication_id }}';
        document.forms['editBookForm'].elements['rack'].value = '{{ $book->rack }}';
    </script>

    <script>



        /*$(document).ready(function() {
            $("#book_status").change(function() {

                var value = $("#book_status option:selected");
                var a = $("#book_status").val();
                if (a===0){
                    $("#reasonInput").show();
                }
            });
        });*/

        $(document).ready(function() {
            $("#book_status").change(function() {

                $("#reasonLabel").show();
                $("#reasonInput").show();

            });
        });

    </script>


@endsection
