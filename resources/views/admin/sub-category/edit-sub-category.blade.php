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
                        <form name="editSubCategoryForm" class="form-horizontal" action="{{route('update-sub-category')}}" method="POST">
                            @csrf
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
                                <label class="control-label col-lg-2">Sub Category Name</label>
                                <div class="col-md-10">
                                    <input type="text" name="sub_cat_name" value="{{$subCategory->sub_cat_name}}" placeholder="Enter a category name" class="form-control">
                                    <input type="hidden" name="id" value="{{$subCategory->id}}">
                                </div>

                            </div>
                            <!--<div class="form-group row">-->
                            <!--    <label class="control-label col-lg-2"></label>-->
                            <!--    <div class="col-md-10">-->
                            <!--        <button type="submit" class="btn btn-primary">Save</button>-->
                            <!--        <button type="reset" class="btn btn-primary">Cancel</button>-->
                            <!--    </div>-->
                            <!--</div>-->
                             <div class="d-flex justify-content-center mt-4">
                                 <button type="submit" class="btn btn-primary">Update</button>
                                 </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.forms['editSubCategoryForm'].elements['category_id'].value = '{{ $subCategory->category_id }}';
    </script>

@endsection
