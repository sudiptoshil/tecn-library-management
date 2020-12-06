<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Book;
use Carbon\Carbon;
use Session;
session_start();
class LatestBookController extends Controller
{   
      public function authcheck()
     {
        $student_id = Session::get('student_id');
        if($student_id == null)
        {
            return redirect('/student/login')->send();
        }
    }
    
    public function bookList()
    {
        $currentDate = Carbon::now();

        $to = date($currentDate->toDateString());

        $from = date(Carbon::now()->subMonth(6));


        /*$latestBooks = DB::table('books')

            ->whereBetween('enlisted_date',[$from,$to])
            ->select('books.*')
            ->get();*/

        $latestBooks = Book::whereBetween('enlisted_date', [$from, $to])->orderBy('id','DESC')->paginate(20);

        return view('student.latest-books.book-list', compact('latestBooks'));
    }
}
