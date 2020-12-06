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

class BookSearchController extends Controller
{
    public function authcheck()
    {
        $teacher_id = Session::get('teacher_id');
        if($teacher_id == null)
        {
            return redirect('/teacher/login')->send();
        }
    }

     public function book_search()
   {
       $this->authcheck();
    //   $publication = Publication::all();
       $category = Category::all();
       $subcategory = Subcategory::all();
    //   $author = Author::all();
       return view('teacher.bookSearch.book_search',[
        //   'publication' => $publication,
           'category' => $category,
           'subcategory' => $subcategory,
        //   'author'     => $author
       ]);
   }


   public function book_name(Request $request)
   {
       $data = array();
        if ($request->get('query')) {
            $query = $request->get('query');
            $result = DB::table('books')
                ->where('book_name', 'LIKE', "%{$query}%")
                ->get();

            foreach ($result as $val) {
                $ara=array();
                $ara["id"]=$val->id;
                $ara["value"]=$val->book_name;
                array_push($data, $ara);
            }
        }
        echo json_encode($data);
   }

    public function publication_name(Request $request)
   {
       $data = array();
        if ($request->get('query')) {
            $query = $request->get('query');
            $result = DB::table('publications')
                ->where('publication_name', 'LIKE', "%{$query}%")
                ->get();

            foreach ($result as $val) {
                $ara=array();
                $ara["id"]=$val->id;
                $ara["value"]=$val->publication_name;
                array_push($data, $ara);
            }
        }
        echo json_encode($data);
   }

   public function author_name(Request $request)
   {
       $data = array();
        if ($request->get('query')) {
            $query = $request->get('query');
            $result = DB::table('authors')
                ->where('author_name', 'LIKE', "%{$query}%")
                ->get();

            foreach ($result as $val) {
                $ara=array();
                $ara["id"]=$val->id;
                $ara["value"]=$val->author_name;
                array_push($data, $ara);
            }
        }
        echo json_encode($data);
   }

   public function display_book(Request $request)
   {
    //   return $request->all();
    $book_name    = $request->get('book');
    $publication  = $request->get('publication');
    $category     = $request->get('category_id');
    $subcategory  = $request->get('subcategory_id');
    $author       = $request->get('author');

    $books = Book::query()
            ->where(function ($filter) use ($book_name,$category,$subcategory,$author,$publication) {
                if (!empty($book_name))
                    $filter->where('book_name', 'LIKE', "%{$book_name}%");
                if (!empty($category))
                    $filter->where('category_id', 'LIKE', "%{$category}%");
                if (!empty($subcategory))
                    $filter->where('subcategory_id', 'LIKE', "%{$subcategory}%");
                if (!empty($subcategory))
                    $filter->where('author_id', 'LIKE', "%{$author}%");
                if (!empty($subcategory))
                    $filter->where('publication_id', 'LIKE', "%{$publication}%");
            })
            ->where('book_status',0)
        ->get();
//            ->paginate(20);

    // if($book_name and $category and $subcategory){


    //       //->where('category_id', 'LIKE', "%{$category}%")
    //      // ->where('subcategory_id', 'LIKE', "%{$subcategory}%")
    //     //   ->where('publication_id', 'LIKE', "%{$publication}%")
    //     //   ->where('author_id', 'LIKE', "%{$author}%")

    // }

    // if($book_name == null and $category == null and $subcategory == null){

    //     // $books  = Book::all();
    //     $books = Book::query()->get();
    // }

    // if($category){
    //     $books = Book::query()->where('book_name', 'LIKE', "%{$book_name}%")->where('category_id', 'LIKE', "%{$category}%")->get();
    // }

    // if($book_name){
    //     $books = Book::query()->where('book_name', 'LIKE', "%{$book_name}%")->get();
    // }

    // if(empty($book_name) and empty($category))
    // {
    //     // $books = Book::where('book_name','!=',$book_name)
    //     // ->where('category_id','=',$category)
    //     // ->get();
    // }
    // else{

    //      $books  = Book::where('book_name','<',$book_name)
    //     ->where('category_id','<',$category)
    //     ->where('subcategory_id','<',$subcategory)
    //     ->get();
    // }


    // print_r($books);
    // exit();


  return view('teacher.bookSearch.book_result',[
      'books' => $books
    ]);


  }

  public function get_categories($id)
  {
     $root  =  $_GET["category_id"];
     $category = Subcategory::where('category_id',$id)->get();
     $res["cat_data"]=$category;
     echo json_encode($res);
  }

    public function show_pdf($id)
    {
        $book = Book::find($id);
        return view('teacher.bookSearch.show_pdf',compact('book'));
    }

}
