<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Model\Teacher;
use Illuminate\Http\Request;
use Session;
use DB;
session_start();

class LoginController extends Controller
{   
    public function authcheck()
    {
        $teacher_id = Session::get('teacher_id');
        if($teacher_id == null)
        {
            return redirect('/teacher/login')->send();
        }
    }
    
    public function logincheck()
   {
      $teacher_id = Session::get('teacher_id');
    if($teacher_id != null)
    {
        return redirect('/teacher/dashboard')->send();
    } 
   }
    
    
    public function login()
    {   
        $this->logincheck();
        return view('teacher.auth.login');

    }

    public function loginProcess(Request $request)
    {
        $teacher = Teacher::where('email', $request->email)->first();
        if ($teacher) {
            if (password_verify($request->password, $teacher->password)) {
                Session::put('teacher_id', $teacher->id);
                Session::put('teacher_name', $teacher->name);

                return redirect('/teacher/dashboard');
            } else {
                return redirect('/teacher/login')->with('message', 'Wrong Password!!');
            }
        } else {
            return redirect('/teacher/login')->with('message', 'Invalid email!!');
        }

    }
    
    public function teacherDashboard(){
        $this->authcheck();
//        exit();
         $teacher_id = Session::get('teacher_id');
           $pendingbooks = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->where('bookings.status',0)
            ->where('bookings.teacher_id','=',$teacher_id)
            ->limit(5)
            ->get();
            
            $receivebooks = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->where('bookings.status','>','0')
            ->where('bookings.teacher_id','=',$teacher_id)
            ->limit(5)
            ->get();
        return view('teacher.home.home',[
             'pendingbooks'=>$pendingbooks,
             'receivebooks'=>$receivebooks,
            
            ]);
    }
    
    public function teacher_logout(Request $request)
    {
        Session::forget('teacher_id');
        return redirect('teacher/login');
    }
    
     public function password_change()
    {   $this->authcheck();
        return view('teacher.auth.password_change');
    }
    
    public function update_password(Request $request)
    {    $this->authcheck();
          $student = Teacher::where('id', $request->id)->first();
        // $student = Session::get('student_id');
        // $student = Student::all();
        if ($student) {
            if (password_verify($request->oldpassword, $student->password)) {
                
                $newpassword = Teacher::find($request->id);
                $newpassword->password = bcrypt($request->new_password);
                $newpassword->save();
                return redirect()->back()->with('message','password changes successfully!!');
          
            } else {
                return redirect()->back()->with('message','old password not valid!!');
            }
        }
        // else {
        //   return redirect()->back()->with('message','registration number not valid!!');
        // }
    }
}
