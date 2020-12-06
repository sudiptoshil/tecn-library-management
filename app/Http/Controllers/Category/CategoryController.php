<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Category;

class CategoryController extends Controller
{
    public function add_category()
    {
        return view('admin.category.category');
    }

    public function save_category(Request $request)
    {
        Category::save_category_info($request);
        return redirect()->back()->with('message','category saved successfully!!');
    }

    public function manage_category()
    {   $category = Category::all();
        return view('admin.category.manage_category',[
            'category' => $category
        ]);
    }

    public function edit_category($id)
    {
        $category = Category::find($id);
        return view('admin.category.edit_category',[
            'category' => $category
        ]);
    }

    public function update_category(Request $request)
    {
        $category = Category::find($request->id);
        $category->name = $request->name;
        $category->save();
        return redirect('manage-category')->with('message','category updated successfully!!');
    }

    public function deactivateCategory($id){
        $category = Category::find($id);
        $category->category_status = 0;
        $category->save();
        return redirect('manage-category')->with('message','Category is now deactivated');
    }

    public function activateCategory($id){
        $category = Category::find($id);
        $category->category_status = 1;
        $category->save();
        return redirect('manage-category')->with('message','Category is now activated');
    }
}
