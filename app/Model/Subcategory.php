<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    protected $guarded = [];

    public static function save_category_info($request)
    {
        $category = new Subcategory();
        $category->sub_cat_name = $request->sub_cat_name;
        $category->category_id = $request->category_id;
        $category->save();
    }
}
