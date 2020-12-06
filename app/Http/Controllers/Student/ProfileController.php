<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Model\Subcategory;
use App\Model\Publication;
use App\Model\Author;
use App\Model\Book;
use App\Model\Booking;
use App\Model\Student;
use DB;
use App\Model\Category;
use Illuminate\Http\Request;
use Session;
session_start();
class ProfileController extends Controller
{   
    
   public function authcheck()
   {
      $student_id = Session::get('student_id');
    if($student_id == null)
    {
        return redirect('/student/login')->send();
    } 
   }
  
  public function profile()
  {  
      $this->authcheck();
      $studentinfo = Session::get('student_id');
      $student     = Student::find($studentinfo);
      return view('student.profile.profile',[
          'student' => $student
        ]);
  }
  
  public function update_profile(Request $request)
  {
    //   return $request->all();
     $this->authcheck();
     $photo =$request->file('photo');
        if ($photo) 
        {
            $student = Student::find($request->id);
            unlink($student->photo);
            $imageName   = $photo->getClientOriginalName();
            $directory   = 'public/student-images/';
            $photo->move($directory,$imageName);
            $student->name   = $request->name;
            $student->email  = $request->email;
            $student->photo = $directory.$imageName;
            $student->phone  =$request->phone;
            $student->save();
        
        } 
        else
        {    
            $student = Student::find($request->id);
            $student->name   = $request->name;
            $student->email  = $request->email;
            $student->phone  = $request->phone;
            $student->save();

            
        }
    return redirect()->back()->with('message','profile updated successfully!!');    
    
  }
  
}