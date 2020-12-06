<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;


class Book extends Model
{   
    protected $guarded = [];
    
   public function author(){
        return $this->belongsTo('App\Model\Author');
    }

    public function publication(){
        return $this->belongsTo('App\Model\Publication');
    }

    public function category()
    {
        return $this->belongsTo('App\Model\Category');
    }
    
    public function subcategory()
    {
        return $this->belongsTo('App\Model\Subcategory');
    }

    public function bookinfo()
    {
        return $this->hasmany('App\Model\BookInfo','id');
    }
    //  public function booking()
    // {
    //     return $this->belongsTo('App\Model\Booking');
    // }

      public function booking()
     {
         return $this->hasMany('App\Model\Booking','id');
     }
}
