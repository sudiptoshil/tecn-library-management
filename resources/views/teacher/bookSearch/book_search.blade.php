@extends('teacher.master')
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
                        <h5 class="text-bold card-title" align="center"><b>Book Search</b></h5>
                        <h3 style="color:red" align="center"></h3>
                        <table class="table table-striped" >
                            <thead>
                                <tr>
                                    <!--<th>Book Name</th>-->
                                    <!--<th>Publisher</th>-->
                                    <!--<th>Category</th>-->
                                    <!--<th>Sub category</th>-->
                                    <!--<th>Author</th>-->
                                </tr>
                            </thead>
                                <form action="{{route('teacher-display-book')}}" method="post">
                                @csrf
                            <tbody>
                                <tr>

                                <td>
                                      <div class="col-md-12">
                                    <input type="text" class="form-control book_name" id="bookName" name="book" placeholder="Book Name">
                                     </div>
                                </td>
                                    <td>
                                     <div class="col-md-12">
                                  <input type="text" id="publicName" class="form-control publication_name" name="publication" placeholder=" Publication Name">
                                </div>

                                    </td>
                                    <td>
                                         <div class="col-md-12">
                                    <select name="category_id" onchange="getCategories(this)" class="form-control">
                                        <option value="0" selected>Select All Category</option>
                                        @foreach($category as $v_category)

                                            <option value="{{ $v_category->id }}" id="category_id" name="category_id">{{ $v_category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                </td>
                                  </td>
                                    <td>
                                         <div class="col-md-12">
                                    <select name="subcategory_id" class="form-control" id="pb">
                                        <option value="0" selected >Select Sub Category</option>
                                        @foreach($subcategory as $v_category)
                                            <option value="{{ $v_category->id }}" id="subcat" name="subcategory_id">{{ $v_category->sub_cat_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                </td>


                                   <td>
                                    <div class="col-md-12">
                                  <input type="text" class="form-control author_name" id="authorName" name="author" placeholder="Author Name">
                                     </div>
                                </td>
                                </tr>

                            </tbody>
                        </table>

                         <div class="form-group row">
                                <label class="control-label col-lg-2"></label>
                                <div class="col-md-12" align="center">
                                    <button type="submit" id="display" class="btn btn-primary">Search</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                </div>
                            </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/search.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/custom/api.js"></script>
 <script type="text/JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" ></script>
 <script>

 </script>
@endsection
