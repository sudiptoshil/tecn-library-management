<?php

namespace App\Http\Controllers\Notice;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Notice;
class NoticeController extends Controller
{
    public function add_notice()
    {
        return view('admin.notice.add_notice');
    }

    public function save_notice(Request $request)
    {
        Notice::save_notice_info($request);
        return redirect()->back()->with('message','notice saved successfully!!');

    }

    public function manage_notice()
    {
        $notice = Notice::paginate(10);
        return view('admin.notice.manage_notice',[
            'notice' => $notice
        ]);
    }

    public function edit_notice($id)
    {
        $notice = Notice::find($id);
        return view('admin.notice.edit_notice',[
            'notice' => $notice
        ]);
    }

    public function update_notice(Request $request)
    {
        $notice = Notice::find($request->id);
        $notice->title          = $request->title;
        $notice->description    = $request->description;
        $notice->status         = $request->status;
        $notice->save();
        return redirect('manage-notice')->with('message','notice updated successfully!!');

    }
}
