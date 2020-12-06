<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class CancelledReportController extends Controller
{
    public function manageListStudents(){


        $reports = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->where('bookings.status', '=', 4)
            ->select('bookings.*', 'books.book_name', 'students.reg_no','students.name')
            ->paginate(10);


        return view('admin.booking.cancelled-report-list',compact('reports'));
    }


    public function manageListTeachers(){


        $reports = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->where('bookings.status', '=', 4)
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->paginate(10);


        return view('admin.booking.cancelled-report-list-teachers',compact('reports'));
    }
}
