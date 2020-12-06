<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use App\Model\Booking;
use Carbon\Traits\Date;
use Illuminate\Http\Request;
use DB;
use App\Model\Book;
use App\Model\Student;
use Carbon;

class AutoCompleteController extends Controller
{
    public function fetch(Request $request)
    {
        $data = array();
        if ($request->get('query')) {
            $query = $request->get('query');
            $result = DB::table('teachers')
                ->where('name', 'LIKE', "%{$query}%")
                ->get();

            foreach ($result as $val) {
                $ara = array();
                $ara["teacher_id"] = $val->id;
                $ara["value"] = $val->name;
                array_push($data, $ara);
            }
        }
        echo json_encode($data);
    }


    public function fetch_student(Request $request)
    {

        $data = array();
        if ($request->get('query')) {
            $query = $request->get('query');
            $result = DB::table('students')
                ->where('name', 'LIKE', "%{$query}%")
                ->get();

            foreach ($result as $val) {
                $ara = array();
                $ara["student_id"] = $val->id;
                $ara["value"] = $val->name;
                array_push($data, $ara);
            }
        }
        echo json_encode($data);
    }

    public function bookSearch(Request $request)
    {
        $data = array();
        if ($request->get('query')) {
            $query = $request->get('query');
            $result = DB::table('books')
                ->where('book_name', 'LIKE', "%{$query}%")
                ->get();

            foreach ($result as $val) {
                $ara = array();
                $ara["book_id"] = $val->id;
                $ara["value"] = $val->book_name;
                array_push($data, $ara);
            }
        }
        echo json_encode($data);
    }

//    public function searchedBookingList(Request $request)
//    {
//
//
////        return "hello world";
////        exit();
//
//
//        $teacher_name = $request->get('teacher_name');
//        $book_name = $request->get('book_name');
//
//        $student_reg_no = $request->get('student_reg_no');
//
//        $from_requested_date = date($request->get('from_requested_date'));
//        $to_requested_date = date($request->get('to_requested_date'));
//
//        $from_issue_date = date($request->get('from_issue_date'));
//        $to_issue_date = date($request->get('to_issue_date'));
//
//        $from_return_date = date($request->get('from_return_date'));
//        $to_return_date = date($request->get('to_return_date'));
//
//        $from_payment_date = date($request->get('from_payment_date'));
//        $to_payment_date = date($request->get('to_payment_date'));
//        $expired_date = $request->get('expired_date');
//        $status = $request->get('status');
//
//        $type = $request->get('type');
//
//        $charge_status = $request->get('charge_status');
//
//
//        if ($type == 0) {
//
//
//            if ($book_name == null && $student_reg_no == null && $from_requested_date == null && $to_requested_date == null && $from_issue_date == null && $to_issue_date == null && $from_return_date == null && $to_return_date == null && $from_payment_date == null && $to_payment_date == null && $request->status == null && $request->charge_status == null) {
//
//
//                $bookings = DB::table('bookings')
//                    ->join('books', 'bookings.book_id', '=', 'books.id')
//                    ->join('students', 'bookings.student_id', '=', 'students.id')
//                    ->where('bookings.teacher_id', '=', null)
//                    ->select('bookings.*', 'books.book_name', 'students.reg_no')
//                    ->get();
//
//
//            } elseif ($charge_status == 1) {
//                $bookings = DB::table('bookings')
//                    ->join('books', 'bookings.book_id', '=', 'books.id')
//                    ->join('students', 'bookings.student_id', '=', 'students.id')
////                    ->where('bookings.teacher_id', '=', null)
//                    ->select('bookings.*', 'books.book_name', 'students.reg_no')
//                    ->where('return_date','>','x_date')
//                    ->get();
//
//            }
//
//
//            else {
//
//                $bookings = DB::table('bookings')
//                    ->join('books', 'bookings.book_id', '=', 'books.id')
//                    ->join('students', 'bookings.student_id', '=', 'students.id')
//                    ->where('books.book_name', '=', $book_name)
//                    ->orWhere('students.reg_no', '=', $student_reg_no)
//                    ->orWhere('bookings.status', '=', $status)
//                    ->orWhere('bookings.return_date', '>', 'x_date')
//                    ->orWhereBetween('bookings.request_date', [$from_requested_date, $to_requested_date])
//                    ->orWhereBetween('bookings.issue_date', [$from_issue_date, $to_issue_date])
//                    ->orWhereBetween('bookings.return_date', [$from_return_date, $to_return_date])
//                    ->orWhereBetween('bookings.payment_date', [$from_payment_date, $to_payment_date])
//                    ->orWhereBetween('bookings.payment_date', [$from_payment_date, $to_payment_date])
//                    ->select('bookings.*', 'books.book_name', 'students.reg_no')
//                    ->get();
//
//
//            }
//
//            return view('admin.booking.searched-booking-list', [
//                'bookings' => $bookings
//            ]);
//
//
//        } else {
//
//
//            if ($teacher_name == null && $book_name == null && $student_reg_no == null && $from_requested_date == null && $to_requested_date == null && $from_issue_date == null && $to_issue_date == null && $from_return_date == null && $to_return_date == null && $from_payment_date == null && $to_payment_date == null && $request->status == null && $request->charge_status == null) {
//
//
//                $bookings = DB::table('bookings')
//                    ->join('books', 'bookings.book_id', '=', 'books.id')
//                    ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
//                    ->where('bookings.student_id', '=', null)
//                    ->select('bookings.*', 'books.book_name', 'teachers.name')
//                    ->get();
//
//            } else {
//
//
//                $bookings = DB::table('bookings')
//                    ->join('books', 'bookings.book_id', '=', 'books.id')
//                    ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
//                    ->where('books.book_name', '=', $book_name)
//                    ->orWhere('teachers.name', '=', $teacher_name)
//                    ->orWhere('bookings.status', '=', $status)
//                    ->orWhereBetween('bookings.request_date', [$from_requested_date, $to_requested_date])
//                    ->orWhereBetween('bookings.issue_date', [$from_issue_date, $to_issue_date])
//                    ->orWhereBetween('bookings.return_date', [$from_return_date, $to_return_date])
//                    ->orWhereBetween('bookings.payment_date', [$from_payment_date, $to_payment_date])
//                    ->orWhere('bookings.charge_paid', '=', $charge_status)
//                    ->select('bookings.*', 'books.book_name', 'teachers.name')
//                    ->get();
//            }
//
//
//            return view('admin.booking.searched-booking-list-teacher', [
//                'bookings' => $bookings
//            ]);
//
//        }
//
//
//    }

    public function searchedBookingList(Request $request)
    {
        $student_reg_no = $request->get('student_reg_no');
        $student = $request->get('student_id');
        $book_id = $request->get('book_id');
        $charge_status = $request->get('charge_status');
        $from_date = date($request->get('from_date'));
        $to_date = date($request->get('to_date'));
        $status = $request->get('status');

        $bookings = Booking::query()
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->where(function ($filter) use ($student_reg_no, $student, $book_id, $charge_status, $from_date, $to_date, $status) {
                if (!empty($student_reg_no)) {
                    $filter->where('students.reg_no', 'LIKE', "%{$student_reg_no}%");
                }
                if (!empty($student_name)) {
                    $filter->where('student_id', 'LIKE', "%{student}%");
                }
                if (!empty($book_id)) {
                    $filter->where('book_id', 'LIKE', "%{$book_id}%");
                }

//                if ($status == 1) {
//                    $filter->where('issue_date', ">=", $from_date)
//                        ->where('issue_date', "<=", $to_date)
//                        ->where('status', 1);
//                }
//                if ($status == 2) {
//                    $filter->where('return_date', ">=", $from_date)
//                        ->where('return_date', "<=", $to_date)
//                        ->where('status', 2);
//                }
//                if ($status == 4) {
//                    $filter->where('status', 4);
////                          where('bookings.updated_at', ">=", $from_date)
////                        ->where('bookings.updated_at', "<=", $to_date)
////
//                }
//                if ($status == 5) {
//                    $filter->whereColumn('return_date', '>', 'x_date')->orwhere('return_date', ">", $from_date)
//                        ->orwhere('return_date', "<", $to_date);
//                    //$filter = DB::select( DB::raw("SELECT * FROM bookings  WHERE issue_date  > x_date") );
//                }
//                if ($charge_status == 1) {
//                    $filter->where('charge_paid', 1);
//                }
//                if ($charge_status == 9) {
//                    $filter->where('charge_paid', 0);
//                }
            })->where(function ($q) use ($from_date, $to_date, $status, $charge_status) {

                if ($status == 6) {
                    if (!empty($from_date)) {
                        $q->where("request_date", ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where("request_date", "<=", $to_date);
                    }
                    $q->where("status", 0);
                }

                if ($status == 1) {
                    if (!empty($from_date)) {
                        $q->where('issue_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('issue_date', "<=", $to_date);
                    }
                    $q->where("status", 1);
                }
                if ($status == 2) {
                    if (!empty($from_date)) {
                        $q->where('return_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('return_date', "<=", $to_date);
                    }
                    $q->where("status", 2);
                }
                if ($status == 4) {
                    if (!empty($from_date)) {
                        $q->where('return_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('return_date', "<=", $to_date);
                    }
                    $q->where("status", 4);
                }
                if ($status == 5) {
                    if (!empty($from_date)) {
                        $q->where('return_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('return_date', "<=", $to_date);
                    }
                    $q->whereColumn('return_date', '>', 'x_date');
                }
                if ($charge_status == 1) {
                    if (!empty($from_date)) {
                        $q->where('payment_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('payment_date', "<=", $to_date);
                    }
                    $q->where('charge_paid', 1);
                }
                if ($charge_status == 9) {
                    if (!empty($from_date)) {
                        $q->where('payment_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('payment_date', "<=", $to_date);
                    }
                    $q->where('charge_paid', 0);
                }
            })
            ->paginate(20);
//        exit();
        return view('admin.booking.searched-booking-list', [
            'bookings' => $bookings
        ]);
    }


    public function teachersearchedBookingList(Request $request)
    {
        $teacher = $request->get('teacher_id');
        $book_id = $request->get('book_id');
        $charge_status = $request->get('charge_status');
        $from_date = date($request->get('from_date'));
        $to_date = date($request->get('to_date'));
        $status = $request->get('status');

        $bookings = Booking::query()
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->where(function ($filter) use ($teacher, $book_id, $charge_status, $from_date, $to_date, $status) {
                if (!empty($teacher)) {
                    $filter->where('teacher_id', 'LIKE', "%{$teacher}%");
                }
                if (!empty($book_id)) {
                    $filter->where('book_id', 'LIKE', "%{$book_id}%");
                }

            })->where(function ($q) use ($from_date, $to_date, $status, $charge_status) {

                if ($status == 6) {
                    if (!empty($from_date)) {
                        $q->where("request_date", ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where("request_date", "<=", $to_date);
                    }
                    $q->where("status", 0);
                }

                if ($status == 1) {
                    if (!empty($from_date)) {
                        $q->where('issue_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('issue_date', "<=", $to_date);
                    }
                    $q->where("status", 1);
                }
                if ($status == 2) {
                    if (!empty($from_date)) {
                        $q->where('return_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('return_date', "<=", $to_date);
                    }
                    $q->where("status", 2);
                }
                if ($status == 4) {
                    if (!empty($from_date)) {
                        $q->where('return_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('return_date', "<=", $to_date);
                    }
                    $q->where("status", 4);
                }
                if ($status == 5) {
                    if (!empty($from_date)) {
                        $q->where('return_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('return_date', "<=", $to_date);
                    }
                    $q->whereColumn('return_date', '>', 'x_date');
                }
                if ($charge_status == 1) {
                    if (!empty($from_date)) {
                        $q->where('payment_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('payment_date', "<=", $to_date);
                    }
                    $q->where('charge_paid', 1);
                }
                if ($charge_status == 9) {
                    if (!empty($from_date)) {
                        $q->where('payment_date', ">=", $from_date);
                    }
                    if (!empty($to_date)) {
                        $q->where('payment_date', "<=", $to_date);
                    }
                    $q->where('charge_paid', 0);
                }
            })
            ->paginate(20);
        return view('admin.booking.searched-booking-list-teacher', [
            'bookings' => $bookings
        ]);
    }
}