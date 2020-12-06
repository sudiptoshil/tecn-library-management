<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Model\Notice;
use Illuminate\Http\Request;

class NoticeController extends Controller
{
    public function noticeList(){

        $notices = Notice::where('status',1)->where('privacy',1)->orwhere('privacy',3)->orderBy('id','DESC')->paginate(20);
        return view('student.notice.notice-list',compact('notices'));
    }

    public function noticeDetails($id){
        $notice = Notice::find($id);
        return view('student.notice.notice-details',compact('notice'));
    }
}
