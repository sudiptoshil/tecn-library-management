<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Model\Department;
use App\Model\Student;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use DB;
use Session;

session_start();

class LoginController extends Controller
{   
    use AuthenticatesUsers;
    
    public function logincheck()
   {
      $student_id = Session::get('student_id');
    if($student_id != null)
    {
        return redirect('/student-dashboard')->send();
    } 
   }
    
    public function login()
    {   
        $this->logincheck();
        return view('student.auth.login');

    }
    
    public function authcheck()
    {
        $student_id = Session::get('student_id');
        if($student_id == null)
        {
            return redirect('/student/login')->send();
        }
    }
    

    public function loginProcess(Request $request)
    {
        $student = Student::where('reg_no', $request->reg_no)->first();
        if ($student) {
            if (password_verify($request->password, $student->password)) {
                // if($student->verification_status == 1){
                if($student->student_status == 1){
                Session::put('student_id', $student->id);
                Session::put('student_name', $student->name);
                return redirect('/student-dashboard');
            // }
            }
            // else{
            //     return redirect('/student/login')->with('message', 'your account not activated!!');
            // }
            else{
                return redirect('/student/login')->with('message', 'You are not activated. Please contact with admin!!');
            }
            } else {
                return redirect('/student/login')->with('message', 'Wrong Password!!');
            }
        } else {
            return redirect('/student/login')->with('message', 'Invalid registration number!!');
        }

    }
    
    public function logout()
    {
        Session::forget('student_id');
        Session::forget('student_name');
        return redirect('/student/login');
    }
    
    
    public function student_dashboard()
    {   $this->authcheck();
         $student_id = Session::get('student_id');
           $pendingbooks = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where('status',0)
            ->where('student_id','=',$student_id)
            ->limit(5)
            ->get();
            
            $receivebooks = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where('status','>','0')
            ->where('student_id','=',$student_id)
            ->limit(5)
            ->get();
        return view('student.home.home',[
            
            'pendingbooks'=>$pendingbooks,
            'receivebooks'=>$receivebooks,
            
            ]);
    }
    
    
    public function password_change()
    {   $this->authcheck();
        return view('student.auth.password_change');
    }
    
    public function update_password(Request $request)
    {    $this->authcheck();
          $student = Student::where('id', $request->id)->first();
        // $student = Session::get('student_id');
        // $student = Student::all();
        if ($student) {
            if (password_verify($request->oldpassword, $student->password)) {
                
                $newpassword = Student::find($request->id);
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
