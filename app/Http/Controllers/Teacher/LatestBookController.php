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

class LatestBookController extends Controller
{   
    public function authcheck()
    {
        $teacher_id = Session::get('teacher_id');
        if($teacher_id == null)
        {
            return redirect('/teacher/login')->send();
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

        $latestBooks = Book::whereBetween('enlisted_date', [$from, $to])->paginate(20);

        return view('teacher.latest-books.book-list', compact('latestBooks'));
    }
}