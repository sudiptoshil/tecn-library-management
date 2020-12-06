<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Model\Notice;
use Illuminate\Http\Request;

class NoticeController extends Controller
{
    public function noticeList()
    {

        $notices = Notice::where('status', 1)->where('privacy', 2)->orwhere('privacy',3)->paginate(10);
        return view('teacher.notice.notice-list', compact('notices'));
    }

    public function noticeDetails($id)
    {
        $notice = Notice::find($id);
        return view('teacher.notice.notice-details', compact('notice'));
    }
}
