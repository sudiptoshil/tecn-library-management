<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $guarded = [];
    
     public function booking(){
        return $this->hasMany('App\Model\Booking','id');
    }
}
