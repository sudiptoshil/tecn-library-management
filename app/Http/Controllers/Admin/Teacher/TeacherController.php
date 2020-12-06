<?php

namespace App\Http\Controllers\Admin\Teacher;

use App\Http\Controllers\Controller;
use App\Model\Department;
use App\Model\Teacher;
use Illuminate\Http\Request;
use App\Model\Designation;
use DB;

class TeacherController extends Controller
{
    public function manageTeacher()
    {

        $teachers = DB::table('teachers')
            ->join('departments','departments.id','=','teachers.department_id')
            ->join('designations','designations.id','=','teachers.designation_id')
            ->select('teachers.*','departments.department_name','designations.designation_name')
            ->get();


        return view('admin.teacher.manage-teacher',[
            'teachers' => $teachers
        ]);
    }

    public function editTeacher($id)
    {
        $teacher = Teacher::find($id);
        return view('admin.teacher.edit-teacher',[
            'teacher' => $teacher,
            'departments' => Department::where('department_status',1)->get(),
        ]);
    }

    public function updateTeacher(Request $request)
    {

        $teacher = Teacher::find($request->id);
        $teacher->name = $request->name;
        $teacher->department_id = $request->department_id;
        $teacher->mobile_number = $request->mobile_number;
        $teacher->save();


        return redirect('admin/manage/teacher')->with('message','Teacher updated successfully!!');
    }

    public function deactivateTeacher($id){
        $teacher = Teacher::find($id);
        $teacher->teacher_status = 0;
        $teacher->save();
        return redirect('admin/manage/teacher')->with('message','Teacher is now deactivated');
    }

    public function activateTeacher($id){
        $teacher = Teacher::find($id);
        $teacher->teacher_status = 1;
        $teacher->save();
        return redirect('admin/manage/teacher')->with('message','Teacher is now activated');
    }
}
