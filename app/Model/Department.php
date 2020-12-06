<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $guarded = [];

    public static function save_department_info($request)
    {
        $department = new Department();
        $department->department_name = $request->name;
        $department->save();
    }


}
