<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $guarded = [];
     public function book()
    {
        return $this->hasmany('App\Model\Book','id');
    }

    public static function save_category_info($request)
    {
        $category = new Category();
        $category->name = $request->name;
        $category->save();
    }
}
