<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use App\Model\Book;
use App\Model\Booking;
use App\Model\Charge;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;

class NewRequestController extends Controller
{
    public function manageListStudents(){



        $reports = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->where('bookings.status', '=', 0)
            ->select('bookings.*', 'books.book_name', 'students.reg_no','students.name')
            ->orderBy('id','DESC')
            // ->get();
            ->paginate(20);



        return view('admin.booking.new-request-list',[
            'reports' => $reports,
        ]);
    }

    public function manageListTeachers(){



        $reports = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->where('bookings.status', '=', 0)
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->orderBy('id','DESC')
            ->paginate(20);



        return view('admin.booking.new-request-list-teachers',[
            'reports' => $reports,
        ]);
    }


    public function issueCurrentReportStudent(Request $request){


        if ($request->chargeManual==null){

            $report = Booking::find($request->id);
            $report->status = 1;

            $book = Book::where('id',$report->book_id)->first();
            $charge = ((100 - $request->percent) * $book->price)/100;
            $report->charge = $charge;

            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->issue_date = $currentDate;
        }

        else{
            $report = Booking::find($request->id);
            $report->status = 1;

            $charge = $request->chargeManual;
            $report->charge = $charge;

            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->issue_date = $currentDate;
        }



        $report->save();

        return redirect()->back()->with('message','Report is now issued');

    }

    public function issueCurrentReportTeacher(Request $request){


        if ($request->chargeManual==null){

            $report = Booking::find($request->id);
            $report->status = 1;

            $book = Book::where('id',$report->book_id)->first();
            $charge = ((100 - $request->percent) * $book->price)/100;
            $report->charge = $charge;

            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->issue_date = $currentDate;
        }

        else{
            $report = Booking::find($request->id);
            $report->status = 1;

            $charge = $request->chargeManual;
            $report->charge = $charge;

            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->issue_date = $currentDate;
        }



        $report->save();

        return redirect()->back()->with('message','Report is now issued');

    }

    public function cancelCurrentReportStudent(Request $request){

        $report = Booking::find($request->id);
        $report->status = 4;

        $report->reason = $request->reason;

        $currentDateTime = Carbon::now();
        $currentDate = date($currentDateTime->toDateString());
        $report->issue_date = $currentDate;

        $report->save();
        
        $book = Book::find($request->book_id);
        $book->book_status = 0;
        $book->save();

        return redirect()->back()->with('message','Report is now cancelled');

    }

    public function cancelCurrentReportTeacher(Request $request){

        $report = Booking::find($request->id);
        $report->status = 4;

        $report->reason = $request->reason;

        $currentDateTime = Carbon::now();
        $currentDate = date($currentDateTime->toDateString());
        $report->issue_date = $currentDate;

        $report->save();
        
        $book = Book::find($request->book_id);
        $book->book_status = 0;
        $book->save();

        return redirect()->back()->with('message','Report is now cancelled');

    }
}
