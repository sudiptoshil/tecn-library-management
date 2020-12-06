<?php

namespace App\Http\Controllers\Department;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Department;

class DepartmentController extends Controller
{
    public function add_department()
    {
        return view('admin.department.add_department');
    }

    public function save_department(Request $request)
    {
        Department::save_department_info($request);
        return redirect()->back()->with('message','department saved successfully!!');
    }

    public function deactivateDepartment($id){
        $department = Department::find($id);
        $department->department_status = 0;
        $department->save();
        return redirect('manage-department')->with('message','Department is now deactivated');
    }

    public function activateDepartment($id){
        $department = Department::find($id);
        $department->department_status = 1;
        $department->save();
        return redirect('manage-department')->with('message','Department is now activated');
    }

    public function manage_department()
    {
        $department = Department::all();
        return view('admin.department.manage_department',[
            'department' => $department
        ]);
    }

    public function edit_department($id)
    {
        $department = Department::find($id);
        return view('admin.department.edit_department',[
            'department' => $department
        ]);
    }

    public function update_department(Request $request)
    {
        $department = Department::find($request->id);
        $department->department_name = $request->name;
        $department->save();
        return redirect('manage-department')->with('message','department updated successfully!!');
    }
}
