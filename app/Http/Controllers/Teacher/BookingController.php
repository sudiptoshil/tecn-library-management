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

class BookingController extends Controller
{   
    public function authcheck()
    {
        $teacher_id = Session::get('teacher_id');
        if($teacher_id == null)
        {
            return redirect('/teacher/login')->send();
        }
    }
    
    
     public function request_book()
    {   
        $teacher_id = Session::get('teacher_id');
        $this->authcheck();
        $book = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('teachers', 'bookings.teacher_id', '=', 'teachers.id')
            ->select('bookings.*', 'books.book_name', 'teachers.name')
            ->where('bookings.teacher_id', '=',$teacher_id)
            ->paginate(20);
        return view('teacher.booking-list.booking_list',[
            'book' => $book
        ]);
    }
    
    public function confirm_request_book(Request $request)
    {    
        $this->authcheck();
         $this->validate($request, [
            'x_date' => 'required',
        ]);
        
        $favbook  = Book::find($request->book_id);
        $favbook->popularity = $favbook->popularity + 1;
        $favbook->book_status = 3;
        // return $favbook;
        $favbook->save();
        
        $booking = new Booking();
        $booking->teacher_id          = $request->teacher_id;
        $booking->book_id             = $favbook->id;
        $booking->x_date              = Carbon::parse($request->x_date);
        $booking->request_date        = Carbon::today()->toDateString();
        $booking->save();
        
        
        return redirect('teacher/teacher-book-request')->with('message','Your new book request submitted!!');
    }
    
    public function return_book($id)
    {
        $book = Booking::find($id);
        $book->return_date = Carbon::today()->toDateString();
        $book->status = 2;
        $book->save();
        return redirect()->back()->with('message','book return successfully!!');
    }
     public function favourite_books()
    {
        $book = Book::orderBy('popularity','desc')->get();
        return view('teacher.booking-list.favourite_books',compact('book'));
    }
}