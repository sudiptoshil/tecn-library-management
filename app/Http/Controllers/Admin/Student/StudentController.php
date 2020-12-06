<?php

namespace App\Http\Controllers\Admin\Student;

use App\Http\Controllers\Controller;
use App\Model\Department;
use App\Model\Student;
use Illuminate\Http\Request;
use DB;
use Image;

class StudentController extends Controller
{


    public function manageStudent()
    {

        $departments = Department::all();

        $students = DB::table('students')
            ->join('departments','departments.id','=','students.department_id')
            ->select('students.*','departments.department_name')
            ->get();


        return view('admin.student.manage-student',[
            'students' => $students,
            'departments' => $departments,
        ]);
    }

    public function editStudent($id)
    {
        $student = Student::find($id);
        return view('admin.student.edit-student',[
            'student' => $student,
            'departments' => Department::where('department_status',1)->get(),
        ]);
    }

    public function updateStudent(Request $request)
    {


        $studentImage = $request->file('photo');

        if ($studentImage) {
            $student = Student::find($request->id);
            unlink('public/'.$student->photo);

            $imageName = $studentImage->getClientOriginalName();
            $directory = 'public/student-images/';
            $imageUrl = $directory . $imageName;
            Image::make($studentImage)->resize(200, 200)->save($imageUrl);

            $student->name = $request->name;
            $student->reg_no = $request->reg_no;
            $student->department_id = $request->department_id;
            $student->year = $request->year;
            $student->phone = $request->phone;
            $student->note = $request->note;
            $student->photo = $imageUrl;
            $student->save();
        }

        else{

            $student = Student::find($request->id);
            $student->name = $request->name;
            $student->reg_no = $request->reg_no;
            $student->department_id = $request->department_id;
            $student->year = $request->year;
            $student->phone = $request->phone;
            $student->note = $request->note;
            $student->save();

        }


        return redirect('admin/manage/student')->with('message','Student updated successfully!!');
    }

    public function deactivateStudent($id){
        $student = Student::find($id);
        $student->student_status = 0;
        $student->save();
        return redirect()->back()->with('message','Student is now deactivated');
    }

    public function activateStudent($id){
        $student = Student::find($id);
        $student->student_status = 1;
        $student->save();
        return redirect()->back()->with('message','Student is now activated');
    }
    
    
    public function searchedStudentList(Request $request)
    {
        //   return $request->all();


        $student_reg_no    = $request->get('student_reg_no');
        $department_id    = $request->get('department_id');
        $student_status    = $request->get('student_status');


        $students = DB::table('students')
            ->join('departments', 'students.department_id', '=', 'departments.id')
            ->where('students.reg_no', '=', $student_reg_no)
            ->orWhere('students.department_id', '=', $department_id)
            ->orWhere('students.student_status', '=', $student_status)
            ->select('students.*','departments.department_name')
            ->get();


        return view('admin.student.searched-student-list',[
            'students' => $students
        ]);

    }
}
