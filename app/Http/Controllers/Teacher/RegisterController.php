<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Model\Teacher;
use App\Model\Department;
use App\Model\Designation;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function register()
    {

        $departments = Department::all();
        $designation = Designation::all();

        return view('teacher.auth.register', [
            'departments' => $departments,
            'designation' => $designation
        ]);
    }

    public function registerProcess(Request $request)
    {

        request()->validate([

            'email' => 'required|unique:teachers,email,',
        ]);

//        return $request->all();
//        exit();

        $teacher = new Teacher();
        $teacher->name = $request->name;
        $teacher->department_id = $request->department_id;
        $teacher->designation_id = $request->designation_id;
        $teacher->email = $request->email;
        $teacher->password = bcrypt($request->password);
        $teacher->mobile_number = $request->mobile_number;
        $teacher->save();


        return redirect('/teacher/login');
    }
}
