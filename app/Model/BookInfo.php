<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class BookInfo extends Model
{
    protected $guarded = [];

    public function book()
    {
        return $this->belongsTo('App\Model\Book');
    }

    

}
