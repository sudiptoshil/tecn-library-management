<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Publication extends Model
{   
    protected $guarded = [];
    
    public function book(){
        
        return $this->hasMany('App\Model\Book');
    }
      public function booking(){
        
        return $this->hasMany('App\Model\Booking');
    }
    
    
    public static function save_publication_info($request)
    {
        $publication = new Publication();
        $publication->publication_name    = $request->publication_name;
        $publication->address = $request->address;
        $publication->save();
    }
}
