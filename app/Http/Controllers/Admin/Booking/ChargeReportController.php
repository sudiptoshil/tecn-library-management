<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Model\Booking;
use Carbon\Carbon;

class ChargeReportController extends Controller
{
    public function charge_report_student()
    {
//        return "hello world";
//        exit();

        $chargereport = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where("returned_date", "!=", "")
            ->where("charge", "!=", "")
            ->orderBy('id', 'DESC')
            ->paginate(10);

//            return $chargereport;
//            exit();
        return view('admin.booking.charge_report', compact('chargereport'));
    }


    public function charge_report_teacher()
    {
        $chargereport = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->where("returned_date", "!=", "")
            ->orderBy('id', 'DESC')
            ->paginate(10);
        return view('admin.booking.charge_report_teacher', compact('chargereport'));
    }

    public function charge_paid_student($id)
    {
        $chargereport = Booking::find($id);
        $chargereport->payment_date = Carbon::today()->toDateString();
        $chargereport->charge_paid = 1;
        $chargereport->save();
        return redirect()->back()->with('message', 'payment  successfully!!');
    }

    public function charge_paid_teacher($id)
    {
        $chargereport = Booking::find($id);
        $chargereport->payment_date = Carbon::today()->toDateString();
        $chargereport->charge_paid = 1;
        $chargereport->save();
        return redirect()->back()->with('message', 'payment  successfully!!');
    }
}