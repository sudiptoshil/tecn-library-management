<?php

namespace App\Http\Controllers\Admin\SubCategory;

use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Model\Subcategory;
use Illuminate\Http\Request;
use DB;

class SubCategoryController extends Controller
{

    public function add_category()
    {
        return view('admin.sub-category.add-sub-category',[
            'categories' => Category::where('category_status',1)->get(),
        ]);
    }

    public function save_category(Request $request)
    {
        Subcategory::save_category_info($request);
        return redirect()->back()->with('message','Sub category saved successfully!!');
    }

    public function manage_category()
    {

        $categories = DB::table('subcategories')
            ->join('categories','categories.id','=','subcategories.category_id')
            ->select('subcategories.*','categories.name')
            ->get();


        return view('admin.sub-category.manage-sub-category',[
            'categories' => $categories,
        ]);
    }

    public function edit_category($id)
    {
        $subCategory = Subcategory::find($id);
        return view('admin.sub-category.edit-sub-category',[
            'subCategory' => $subCategory,
            'categories' => Category::where('category_status',1)->get(),
        ]);
    }

    public function update_category(Request $request)
    {
        $category = Subcategory::find($request->id);
        $category->category_id = $request->category_id;
        $category->sub_cat_name = $request->sub_cat_name;
        $category->save();
        return redirect('/sub-category/manage')->with('message','Sub category updated successfully!!');
    }



}
