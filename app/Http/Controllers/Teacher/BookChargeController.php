<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Model\Teacher;
use App\Model\Subcategory;
use App\Model\Publication;
use App\Model\Author;
use App\Model\Book;
use App\Model\Booking;
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
        $teacher_id = Session::get('teacher_id');
        if($teacher_id == null)
        {
            return redirect('/teacher/login')->send();
        }
    }

    public function teacher_charge_report()
    {
        $this->authcheck();
        $teacher_id = Session::get('teacher_id');
        $chargereport = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
//            ->join('charges','bookings.charge_id','charges.id')
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->where('books.teacher_id',$teacher_id)
            ->paginate(20);
        return view('teacher.booking-list.book_charge',compact('chargereport'));
    }



}
