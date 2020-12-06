<?php

namespace App\Http\Controllers\Designation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Designation;

class DesignationController extends Controller
{
    public function add_designation()
    {
        return view("admin.designation.add_designation");
    }

    public function save_designation(Request $request)
    {
        $designation = new Designation();
        $designation->designation_name = $request->designation_name;
        $designation->save();
        return redirect()->back()->with('message','Designation Saved Successfully!!');
    }

    public function manage_designation()
    {   $designation = Designation::all();
        return view('admin.designation.manage_designation',[
            'designation'=> $designation
        ]);
    }

    public function edit_designation($id)
    {
        $designation = Designation::find($id);

        return view('admin.designation.edit_designation',[
            'designation'=> $designation
        ]);
    }

    public function update_designation(Request $request)
    {
        $designation = Designation::find($request->id);
        $designation->designation_name = $request->designation_name;
        $designation->save();
        return redirect('manage-designation')->with('message','Designation Updated Successfully!!');
    }
}
