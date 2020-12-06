<?php

namespace App\Http\Controllers\Admin\Booking;

use App\Http\Controllers\Controller;
use App\Model\Booking;
use App\Model\Charge;
use Illuminate\Http\Request;
use DB;

class BookingController extends Controller
{
    public function manageBooking()
    {

//        $currentDateTime = date('Y-m-d');
//        $student_exptected_expired_return = DB::table('bookings')->where('return_date','>','x_date')->get();
//        return $student_exptected_expired_return;
//        exit();


        $charges = Charge::all();

        $studentBookings = DB::table('bookings')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->select('bookings.*',  'books.book_name', 'students.reg_no')
            ->get();



//        $student_exptected_expired_return = DB::table('bookings')->where('x_date','>',$currentDateTime)->get();

            
        $teacherBookings = DB::table('bookings')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->select('bookings.*', 'teachers.name', 'books.book_name')
            ->get();    
            

        return view('admin.booking.manage-booking',[
            'charges' => $charges,
            'studentBookings'=> $studentBookings,
            'teacherBookings'=> $teacherBookings,
        ]);
    }


    public function teacher_manageBooking()
    {
        $charges = Charge::all();
        $teacherBookings = DB::table('bookings')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->select('bookings.*', 'teachers.name', 'books.book_name')
            ->get();


        return view('admin.booking.teacher_manage_booking',[
            'charges' => $charges,
            'teacherBookings'=> $teacherBookings,
        ]);
    }

    public function getBookings($id)
    {
        //$books = Book::where('subcategory_id',$id)->get();

        $c = strval($id);
        $check = $c[0];

        if ($check == 0) {

            $str1 = strval($id);

            $catId = substr($str1, 1);


            $books = DB::table('books')
                ->where('books.category_id', $catId)
                ->join('categories', 'categories.id', '=', 'books.category_id')
                ->join('subcategories', 'subcategories.id', '=', 'books.subcategory_id')
                ->join('authors', 'authors.id', '=', 'books.author_name')
                ->join('publications', 'publications.id', '=', 'books.publication_name')
                ->join('recks', 'recks.id', '=', 'books.rack')
                ->select('books.*', 'categories.name', 'subcategories.sub_cat_name', 'authors.author_name', 'publications.publication_name', 'recks.no')
                ->get();
        } else {
            $books = DB::table('books')
                ->where('books.subcategory_id', $id)
                ->join('categories', 'categories.id', '=', 'books.category_id')
                ->join('subcategories', 'subcategories.id', '=', 'books.subcategory_id')
                ->join('authors', 'authors.id', '=', 'books.author_name')
                ->join('publications', 'publications.id', '=', 'books.publication_name')
                ->join('recks', 'recks.id', '=', 'books.rack')
                ->select('books.*', 'categories.name', 'subcategories.sub_cat_name', 'authors.author_name', 'publications.publication_name', 'recks.no')
                ->get();
        }


        return view('admin.book.book-list', compact('books'));
    }
}
