<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    protected $guarded = [];

    public static function save_notice_info($request)
    {
        $notice = new Notice();
        $notice->title = $request->title;
        $notice->description = $request->description;
        $notice->status = $request->status;
        $notice->privacy = $request->privacy;
        $notice->save();
    }
}
