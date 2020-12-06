<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    protected $guarded = [];
    
    public function books(){
        return $this->hasMany('App\Model\Book','id');
    }

    public static function save_author_info($request)
    {
        $author = new Author();
        $author->author_name    = $request->author_name;
        $author->address = $request->address;
        $author->save();
    }
}
