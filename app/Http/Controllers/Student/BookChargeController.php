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
use Carbon\Carbon;
use App\Model\Category;
use Illuminate\Http\Request;
use Session;
session_start();
class BookChargeController extends Controller
{   
    
   public function authcheck()
   {
      $student_id = Session::get('student_id');
    if($student_id == null)
    {
        return redirect('/student/login')->send();
    } 
   }
   
    public function student_charge_report()
    { 
        $student_id = Session::get('student_id');
        $chargereport = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
//            ->join('charges','bookings.charge_id','charges.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where('student_id',$student_id)
            ->orderBy('id','DESC')
            ->paginate(20);
        return view('student.booking-list.book_charge',compact('chargereport'));
    }
}