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
class BookingController extends Controller
{   
    
   public function authcheck()
   {
      $student_id = Session::get('student_id');
    if($student_id == null)
    {
        return redirect('/student/login')->send();
    } 
   }
    
    public function request_book()
    {   
        $student = Session::get('student_id');
        $this->authcheck();
        $book = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where('bookings.student_id', '=',$student)
            ->orderBy('id','DESC')
            ->paginate(20);
            
        return view('student.booking-list.booking_list',[
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
        
        $favbook->book_status = 3;
        
        $favbook->popularity = $favbook->popularity + 1;
        $favbook->save();
        
        $booking = new Booking();
        $booking->student_id          = $request->student_id;
        $booking->book_id             = $favbook->id;
        $booking->x_date              = Carbon::parse($request->x_date);
        $booking->request_date        = Carbon::today()->toDateString();
        $booking->save();
        
        

        
        
        return redirect('book-request')->with('message','your new book request submitted!!');
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
        $book = Book::orderBy('popularity','desc')->paginate(20);
        return view('student.booking-list.favourite_books',compact('book'));
    }
}