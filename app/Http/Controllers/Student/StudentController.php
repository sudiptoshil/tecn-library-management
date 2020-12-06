<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Model\Subcategory;
use App\Model\Publication;
use App\Model\Author;
use App\Model\Book;
use App\Model\Student;
use DB;
use App\Model\Category;
use Illuminate\Http\Request;
use Session;
session_start();
class StudentController extends Controller
{   
       public function authcheck()
    {
        $student_id = Session::get('student_id');
        if($student_id == null)
        {
            return redirect('/student/login')->send();
        }
    }
    
    public function all_books()
    {
        // $books  = Book::all();
      $this->authcheck();
      $books = DB::table('books')
            ->join('publications', 'books.publication_id', '=', 'publications.id')
            ->join('authors', 'books.author_id', '=', 'authors.id')
            ->select('books.*', 'publications.publication_name', 'authors.author_name')
            ->get();
        return view('student.books.all_books',compact('books'));
    }
    
    // public function addfavourite_books(Request $request)
    // {   
    //     $this->authcheck();
    //     $books = Student::find($request->id);
    //     $books->favouritebook_id = $request->book_id;
    //     $books->save();
    //     return redirect()->back()->with('message','favourite book added successfully!!');
    // }
    
    public function pending_book()
    {
         $this->authcheck();
         $student_id = Session::get('student_id');
           $books = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where('status',0)
            ->where('student_id','=',$student_id)
            ->get();
         return view('student.books.pending_book',[
             'books' => $books
            ]);
    }
    
    public function receive_book()
    {
          $this->authcheck();
         $student_id = Session::get('student_id');
           $books = DB::table('bookings')
            ->join('books', 'bookings.book_id', '=', 'books.id')
            ->join('students', 'bookings.student_id', '=', 'students.id')
            ->select('bookings.*', 'books.book_name', 'students.name')
            ->where('status',1)
            ->where('student_id','=',$student_id)
            ->get();
         return view('student.books.receive_book',[
             'books' => $books
            ]);
    }
}