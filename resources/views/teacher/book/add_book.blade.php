@extends('teacher.master')
@section('body')
    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <!--<div class="col-xs-12">-->
                <!--    <h4 class="page-title">Add Book</h4>-->
                <!--</div>-->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    @foreach ($errors->all() as $error)
                        <h5 style="color:red" align="center">{{ $error }}</h5>
                    @endforeach
                    <div class="card-box">
                        <h1 class="text-center page-title">Add Book</h1>
                        <h3 style="color:black" align="center">{{Session::get('message')}}</h3>
                        <form action="{{route('teacher-save-book')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row col-md-12">

                                <div class="form-group row col-md-6">
                                    <label class="col-md-4 col-form-label"><span style="color: red"><i class="fas fa-star"></i></span>Course Name</label>
                                    <div class="col-md-8">

                                        <input required class="form-control" type="text" name="book_name"
                                               placeholder="Course Name" class="form-control">
                                    </div>
                                </div>
                            </div>


{{--                            <div class="row col-md-12 mt-2">--}}
{{--                                <div class="form-group row col-md-6">--}}
{{--                                    <label class="col-sm-4 col-form-label"> <span style="color: red"><i class="fas fa-star"></i></span>Edition</label>--}}

{{--                                    <div class="col-sm-8">--}}
{{--                                        <input required  class="form-control" type="text" name="edition"--}}
{{--                                               placeholder="Edition No" class="form-control">--}}
{{--                                    </div>--}}

{{--                                </div>--}}

{{--                            </div>--}}


                            <div class="row col-md-12 mt-2">
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label"><span style="color: red"><i class="fas fa-star"></i></span>Teacher Name</label>

                                    <div class="col-sm-8">
                                        <select required name="author_id" class="form-control">
                                            @foreach($authors as $author)
                                                <option value="{{ $author->id }}">{{ $author->author_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                </div>

                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Publication</label>

                                    <div class="col-sm-8">
                                        <select name="publication_id" class="form-control">
                                            <option selected value="0">Select</option>
                                            @foreach($publications as $publication)
                                                <option
                                                        value="{{ $publication->id }}">{{ $publication->publication_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                </div>


                            </div>


                            <div class="row col-md-12 mt-2">

                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label"><span style="color: red"><i class="fas fa-star"></i></span>Language</label>

                                    <div class="col-sm-8">
                                        <input  required class="form-control" type="text" name="language"
                                               placeholder="Enter Language Name" class="form-control">
                                    </div>

                                </div>


                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Copies</label>

                                    <div class="col-sm-8">
                                        <input  class="form-control" type="text" name="copy"
                                               placeholder="No Of Copies" class="form-control">
                                    </div>

                                </div>


                            </div>


                            <div class="row mt-2 col-md-12">
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Category</label>

                                    <div class="col-sm-8">
                                        <select name="cat" class="form-control">
                                            <option selected value="0">Select</option>
                                            @foreach($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                </div>

                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">SubCategory</label>

                                    <div class="col-sm-8">
                                        <select name="sub_cat" class="form-control">
                                            <option selected value="0"></option>
                                            @foreach($subCategories as $subCategory)
                                                <option
                                                        value="{{ $subCategory->id }}">{{ $subCategory->sub_cat_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                </div>
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label"><span style="color: red"><i class="fas fa-star"></i></span>Deaprtment</label>

                                    <div class="col-sm-8">
                                        <select  required name="department_id" class="form-control">

                                            @foreach($department as $v_dept)
                                                <option value="{{ $v_dept->id }}">{{ $v_dept->department_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                </div>


                            </div>


                            <div class="row mt-2 col-md-12">
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Rack</label>

                                    <div class="col-sm-8">
                                        <select name="rack" class="form-control">
                                            <option selected value="0">Select</option>
                                            @foreach($racks as $rack)
                                                <option value="{{ $rack->id }}">{{ $rack->no }}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                </div>

                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Price</label>

                                    <div class="col-sm-8">
                                        <input  class="form-control" type="text" name="price"
                                               placeholder="Enter Price"
                                               class="form-control">
                                    </div>


                                </div>


                            </div>

                            <div class="row mt-2 col-md-12">
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Enlisted Date</label>

                                    <div class="col-sm-8">
                                        <input  class="form-control" type="date" name="enlisted_date"
                                               placeholder="Enter Date" class="form-control">
                                    </div>


                                </div>
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Condition</label>

                                    <div class="col-sm-8">
                                        <input  class="form-control" type="text" name="condition"
                                               placeholder="Enter Condition" class="form-control">
                                    </div>


                                </div>
                                <div class="form-group row col-md-6">
                                    <label class="col-sm-4 col-form-label">Book Description</label>

                                    <div class="col-sm-8">
                                        <textarea class="form-control" name="book_description"></textarea>
                                    </div>


                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-lg-2">Book File</label>
                                    <div class="col-lg-10">
                                        <input type="file" name="book_file" class="form-control-file"
                                               id="exampleFormControlFile1">

                                    </div>
                                </div>
                            </div>

                            {{--start multiple row--}}

                            <div class="panel panel-default" style="margin-top: 5%; ">
                                {{--                                        <div class="panel-heading"></div>--}}
                                <div class="panel-heading" align="center">Book Information</div>
                                <div class="panel-body">

                                    <div id="education_fields">

                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="accession_no"
                                                   name="accession_no[]" value="" placeholder="Accession No">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="isbn" name="isbn[]" value=""
                                                   placeholder="Isbn No">
                                        </div>
                                    </div>
                                    <div class="col-sm-3 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="code" name="code[]" value=""
                                                   placeholder="Book Code ">
                                        </div>
                                    </div>

                                    <div class="col-sm-3 ">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-success" type="button"
                                                            onclick="education_fields();"><span
                                                                class="glyphicon glyphicon-plus"
                                                                aria-hidden="true"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>

                                </div>
                                <div class="panel-footer"><small>Press <span class="glyphicon glyphicon-plus gs"></span>
                                    </small>, <small align="center">Press <span
                                                class="glyphicon glyphicon-minus gs"></span> to remove form
                                        field</small></div>
                                {{--                                        <div class="panel-footer"><small><em><a href="http://shafi.info/">More Info - Developer Shafi (Bangladesh)</a></em></em></small></div>--}}
                            </div>

                            {{--    end multiple row--}}

                            <div class="d-flex justify-content-center">
                                <button type="submit" class="text-center btn btn-primary">Save</button>
                            </div>


                        </form>
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
                            jQuery.each(data, function (key, value) {
                                $('select[name="sub_cat"]').append('<option value="' + key + '">' + value + '</option>');

                            });

                        }

                    });
                } else {
                    $('select[name="sub_cat"]').empty();
                }
            });
        });
    </script>
    <script>
        var room = 1;

        function education_fields() {

            room++;
            var objTo = document.getElementById('education_fields')
            var divtest = document.createElement("div");
            divtest.setAttribute("class", "form-group removeclass" + room);
            var rdiv = 'removeclass' + room;
            divtest.innerHTML = '<div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="accession_no" name="accession_no[]" value="" placeholder="Accession No "></div>' +
                '</div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="isbn" name="isbn[]" value="" placeholder="Isbn No"></div>' +
                '</div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="code" name="code[]" value="" placeholder="Book Code"></div></div><div class="col-sm-3 nopadding"><div class="form-group"><div class="input-group"> </select><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields(' + room + ');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div>';

            objTo.appendChild(divtest)
        }

        function remove_education_fields(rid) {
            $('.removeclass' + rid).remove();
        }
    </script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

@endsection
