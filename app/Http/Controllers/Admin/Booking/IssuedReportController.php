<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use App\Model\Booking;
use Illuminate\Http\Request;
use DB;

class IssuedReportController extends Controller
{

    public function manageListStudents(){


        $reports = DB::table('bookings')

            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->where('bookings.status', '=', 1)
            ->select('bookings.*', 'books.book_name','students.reg_no','students.name')
            ->paginate(10);

//        return $reports;
//        exit();


        return view('admin.booking.issued-report-list',compact('reports'));
    }


    public function manageListTeachers(){


        $reports = DB::table('bookings')

            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->where('bookings.status', '=', 1)
            ->select('bookings.*', 'books.book_name','teachers.name')
            ->paginate(10);


        return view('admin.booking.issued-report-list-teachers',compact('reports'));
    }
}
