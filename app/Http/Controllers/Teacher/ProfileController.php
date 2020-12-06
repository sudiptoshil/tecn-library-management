<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Model\Subcategory;
use App\Model\Publication;
use App\Model\Author;
use App\Model\Book;
use App\Model\Booking;
use App\Model\Teacher;
use DB;
use App\Model\Category;
use Illuminate\Http\Request;
use Session;
session_start();
class ProfileController extends Controller
{   
    
   public function authcheck()
   {
      $teacher_id = Session::get('teacher_id');
    if($teacher_id == null)
    {
        return redirect('/teacher/login')->send();
    } 
   }
  
  public function profile()
  {  
      $this->authcheck();
      $teacherinfo = Session::get('teacher_id');
      $teacher     = Teacher::find($teacherinfo);
      return view('teacher.profile.profile',[
          'teacher' => $teacher
        ]);
  }
  
  public function update_profile(Request $request)
  {
    //   return $request->all();
            $this->authcheck();
            $student = Teacher::find($request->id);
            $student->name   = $request->name;
            $student->email  = $request->email;
            $student->mobile_number  = $request->phone;
            $student->save();


    return redirect()->back()->with('message','profile updated successfully!!');    
    
  }
  
}