<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use App\Model\Book;
use App\Model\Booking;
use App\Model\Charge;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;

class ReturnedReportController extends Controller
{
    public function manageListStudents(){


        $charges = Charge::all();

        $reports = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->where('bookings.status', '=', 2)
            ->orWhere('bookings.status', '=', 3)
            ->select('bookings.*', 'books.book_name', 'students.reg_no','students.name')
            ->orderBy('id','DESC')
            ->paginate(10);


        return view('admin.booking.returned-report-list',[
            'reports' => $reports,
            'charges' => $charges
        ]);
    }


    public function manageListTeachers(){


        $charges = Charge::all();

        $reports = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->where('bookings.status', '=', 2)
            ->orWhere('bookings.status', '=', 3)
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->orderBy('id','DESC')
            ->paginate(10);


        return view('admin.booking.returned-report-list-teachers',[
            'reports' => $reports,
            'charges' => $charges
        ]);
    }

    public function acceptReturnedReportStudent(Request $request){



        if ($request->chargeManual==null){

            $report = Booking::find($request->id);
            $report->status = 3;

            $book = Book::where('id',$report->book_id)->first();
            $charge = (($request->percent) * $book->price)/100;
            $report->charge = $charge;


            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->returned_date = $currentDate;
            $report->save();
            
            $book = Book::find($request->book_id);
            $book->book_status = 0;
            $book->save();


        }

        else{


            $report = Booking::find($request->id);
            $report->status = 3;


            $charges = $request->chargeManual;
            $report->charge = $charges;

            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->returned_date = $currentDate;
            $report->save();
            
            $book = Book::find($request->book_id);
            $book->book_status = 0;
            $book->save();


        }


        return redirect()->back()->with('message','Returned report is now accepted');

    }

    public function acceptReturnedReportTeacher(Request $request){



        if ($request->chargeManual==null){

            $report = Booking::find($request->id);
            $report->status = 3;


            $book = Book::where('id',$report->book_id)->first();
            $charge = ((100 - $request->percent) * $book->price)/100;
            $report->charge = $charge;


            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->returned_date = $currentDate;
            $report->save();
            
            $book = Book::find($request->book_id);
            $book->book_status = 0;
            $book->save();


        }

        else{


            $report = Booking::find($request->id);
            $report->status = 3;


            $charge = $request->chargeManual;
            $report->charge = $charge;

            $currentDateTime = Carbon::now();
            $currentDate = date($currentDateTime->toDateString());
            $report->returned_date = $currentDate;
            $report->save();
            
            $book = Book::find($request->book_id);
            $book->book_status = 0;
            $book->save();


        }


        return redirect()->back()->with('message','Returned report is now accepted');

    }
}
