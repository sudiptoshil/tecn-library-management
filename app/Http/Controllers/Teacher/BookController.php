<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Book;
use App\Model\Category;
use App\Model\Subcategory;
use App\Model\Publication;
use App\Model\Reck;
use App\Model\Author;
use App\Model\BookInfo;
use App\Model\Department;
use DB;
use Session;

class BookController extends Controller
{

    public function teacher_add_book()
    {
        return view('teacher.book.add_book', [
            'categories' => Category::where('category_status', 1)->get(),
            'subCategories' => Subcategory::get(),
            'publications' => Publication::get(),
            'department' => Department::get(),
            'authors' => Author::get(),
            'racks' => Reck::get(),
        ]);
    }

    public function teacher_save_book(Request $request)
    {

        $isbn = DB::table('books')->where('isbn', '=', $request->isbn)->get();
        $accession_no = $request->accession_no;
        $isbn_no = $request->isbn;
        $code = $request->code;
        $image = $request->book_file;

        if (!empty($image)) {

            $request->validate([
                'book_file' => 'mimes:pdf,xlx,csv|max:2048',
            ]);
//            $image = $request->book_file;
            $imageName = $image->getClientOriginalName();
            $directory = 'public/book-file';
            $image->move($directory, $imageName);

            $book = new Book();
            $book->book_name = $request->book_name;
            $book->edition = $request->edition;
            $book->copy = $request->copy;
            $book->author_id = $request->author_id;
            $book->publication_id = $request->publication_id;
            $book->language = $request->language;
            $book->category_id = $request->cat;
            $book->teacher_id = Session::get('teacher_id');
            $book->subcategory_id = $request->sub_cat;
            $book->department_id = $request->department_id;
            $book->rack = $request->rack;
            $book->price = $request->price;
            $book->enlisted_date = $request->enlisted_date;
            $book->condition = $request->condition;
            $book->book_description = $request->book_description;
            $book->book_file = $directory . $imageName;
            $book->save();
        } else {
            $book = new Book();
            $book->book_name = $request->book_name;
            $book->edition = $request->edition;
            $book->copy = $request->copy;
            $book->author_id = $request->author_id;
            $book->publication_id = $request->publication_id;
            $book->language = $request->language;
            $book->category_id = $request->cat;
            $book->teacher_id = Session::get('teacher_id');
            $book->subcategory_id = $request->sub_cat;
            $book->department_id = $request->department_id;
            $book->rack = $request->rack;
            $book->price = $request->price;
            $book->enlisted_date = $request->enlisted_date;
            $book->condition = $request->condition;
            $book->book_description = $request->book_description;
            $book->save();
        }


        $codeSize = count($code);
        for ($i = 0; $i < $codeSize; $i++) {
            $cid = $code[$i];
            $isbn = $isbn_no[$i];
            $acc = $accession_no[$i];

            $bookinfo = new BookInfo();
            $bookinfo->book_id = $book->id;
            $bookinfo->accession_no = $acc;
            $bookinfo->isbn_no = $isbn;
            $bookinfo->book_code = $cid;
            $bookinfo->save();
//            echo $cid."-".$isbn."<br>";
        }
        return redirect()->back()->with("message", "Book Saved Successfully!!");
    }


}
