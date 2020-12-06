<?php

namespace App\Http\Controllers\Admin\Book;

use App\Http\Controllers\Controller;
use App\Model\Book;
use App\Model\Category;
use App\Model\Subcategory;
use Illuminate\Http\Request;
use App\Model\Publication;
use App\Model\Reck;
use App\Model\Author;
use App\Model\BookInfo;
use App\Model\Department;
use DB;

class BookController extends Controller
{
    public function addBook()
    {
        return view('admin.book.add-book', [
            'categories' => Category::where('category_status', 1)->get(),
            'subCategories' => Subcategory::get(),
            'publications' => Publication::get(),
            'department' => Department::get(),
            'authors' => Author::get(),
            'racks' => Reck::get(),
        ]);
    }

    public function saveBook(Request $request)
    {


        $isbn = DB::table('books')->where('isbn', '=', $request->isbn)->get();
        $accession_no = $request->accession_no;
        $isbn_no = $request->isbn;
        $code = $request->code;
        $request->validate([
            'book_file' => 'mimes:pdf,xlx,csv|max:2048',
            'author_id' => 'required',
        ]);

        $image = $request->book_file;


        if (!empty($image)) {
            $imageName = $image->getClientOriginalName();
            $directory = 'public/book-file/';
            $image->move($directory, $imageName);

            $book = new Book();
            $book->book_name = $request->book_name;
            $book->edition = $request->edition;
            $book->copy = $request->copy;
            $book->author_id = $request->author_id;
            $book->publication_id = $request->publication_id;
            $book->language = $request->language;
            $book->category_id = $request->cat;
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
        }

        return redirect()->back()->with('message', 'Book saved successfully!!');
    }


    public function manageBook()
    {
        $books = DB::table('books')
            ->join('categories', 'categories.id', '=', 'books.category_id')
            ->join('subcategories', 'subcategories.id', '=', 'books.subcategory_id')
            ->join('authors', 'authors.id', '=', 'books.author_id')
            ->join('publications', 'publications.id', '=', 'books.publication_id')
            ->join('recks', 'recks.id', '=', 'books.rack')
            ->select('books.*', 'categories.name', 'subcategories.sub_cat_name', 'authors.author_name', 'publications.publication_name', 'recks.no')
            ->get();


        return view('admin.book.manage-book', [
            'books' => $books,
            'categories' => Category::where('category_status', 1)->get(),
            'department' => Department::get(),
            'racks' => Reck::all(),
        ]);
    }


    public function getSubCats($id)
    {
        $subCats = Subcategory::where('category_id', $id)->pluck('sub_cat_name', 'id');
        return json_encode($subCats);
    }

    public function getBooks($id)
    {

        $c = strval($id);
        $check = $c[0];

        if ($check == 0) {

            $str1 = strval($id);

            $catId = substr($str1, 1);


            $books = DB::table('books')
                ->where('books.category_id', $catId)
                ->join('categories', 'categories.id', '=', 'books.category_id')
                ->join('subcategories', 'subcategories.id', '=', 'books.subcategory_id')
                ->join('authors', 'authors.id', '=', 'books.author_id')
                ->join('publications', 'publications.id', '=', 'books.publication_id')
                ->join('recks', 'recks.id', '=', 'books.rack')
                ->select('books.*', 'categories.name', 'subcategories.sub_cat_name', 'authors.author_name', 'publications.publication_name', 'recks.no')
                ->get();
        } else {
            $books = DB::table('books')
                ->where('books.subcategory_id', $id)
                ->join('categories', 'categories.id', '=', 'books.category_id')
                ->join('subcategories', 'subcategories.id', '=', 'books.subcategory_id')
                ->join('authors', 'authors.id', '=', 'books.author_id')
                ->join('publications', 'publications.id', '=', 'books.publication_id')
                ->join('recks', 'recks.id', '=', 'books.rack')
                ->select('books.*', 'categories.name', 'subcategories.sub_cat_name', 'authors.author_name', 'publications.publication_name', 'recks.no')
                ->get();
        }


        return view('admin.book.book-list', compact('books'));
    }


    public function editBook($id)
    {
//        $book =  Book::find($id);
//        return $book->book_name;
//
//        exit();

        return view('admin.book.edit-book', [
            'categories' => Category::where('category_status', 1)->get(),
            'subCategories' => Subcategory::get(),
            'publications' => Publication::get(),
            'authors' => Author::get(),
            'racks' => Reck::get(),
            'book' => Book::find($id)
        ]);
    }

    public function updateBook(Request $request)
    {
//        $books = Book::where('isbn', '=', $request->id)->get();
        $reason = $request->reason;
        if (!empty($reason)) {
            $book = Book::find($request->book_id);
            $book->book_name = $request->book_name;
            $book->edition = $request->edition;
            $book->author_id = $request->author_id;
            $book->publication_id = $request->publication_id;
            $book->language = $request->language;
            $book->category_id = $request->cat;
            $book->subcategory_id = $request->sub_cat;
            $book->rack = $request->rack;
            $book->price = $request->price;
            $book->enlisted_date = $request->enlisted_date;
            $book->condition = $request->condition;
            $book->book_status = $request->book_status;
            $book->reason = $request->reason;
            $book->save();
        } else {
            $book = Book::find($request->book_id);
            $book->book_name = $request->book_name;
            $book->edition = $request->edition;
            $book->author_id = $request->author_id;
            $book->publication_id = $request->publication_id;
            $book->language = $request->language;
            $book->category_id = $request->cat;
            $book->subcategory_id = $request->sub_cat;
            $book->rack = $request->rack;
            $book->price = $request->price;
            $book->enlisted_date = $request->enlisted_date;
            $book->condition = $request->condition;
            $book->book_status = $request->book_status;
            $book->save();
        }


//        if ($request->reason == null) {
//
//            foreach ($books as $book) {
//
//                $book->book_name = $request->book_name;
//                $book->edition = $request->edition;
//                $book->author_id = $request->author_id;
//                $book->publication_id = $request->publication_id;
//                $book->language = $request->language;
//                $book->category_id = $request->category_id;
//                $book->subcategory_id = $request->subcategory_id;
//                $book->rack = $request->rack;
//                $book->price = $request->price;
//                $book->enlisted_date = $request->enlisted_date;
//                $book->condition = $request->condition;
//                $book->book_status = $request->book_status;
//                $book->save();
//
//            }
//        } else {
//
//            foreach ($books as $book) {
//                $book->book_name = $request->book_name;
//                $book->edition = $request->edition;
//                $book->author_id = $request->author_id;
//                $book->publication_id = $request->publication_id;
//                $book->language = $request->language;
//                $book->category_id = $request->category_id;
//                $book->subcategory_id = $request->subcategory_id;
//                $book->rack = $request->rack;
//                $book->price = $request->price;
//                $book->enlisted_date = $request->enlisted_date;
//                $book->condition = $request->condition;
//                $book->book_status = $request->book_status;
//                $book->reason = $request->reason;
//                $book->save();
//            }
//
//
//        }


        return redirect('/admin/manage/book')->with('message', 'Book updated successfully!!');
    }


    public function searchedBookList(Request $request)
    {


        $code = $request->get('code');
        $book_name = $request->get('book_name');
        $publisher_name = $request->get('publisher_name');
        $accession_no = $request->get('accession_no');
        $issn_no = $request->get('issn_no');
        $author_name = $request->get('author_name');
        $department_id = $request->get('department_id');
        $sub_cat_id = $request->get('sub_cat');
        $rack = $request->get('rack');
        $from_enlisted_date = $request->get('from_enlisted_date');
        $to_enlisted_date = $request->get('to_enlisted_date');
        $book_status = $request->get('book_status');

        $books = Book::query()
            ->join('book_infos', 'books.id', 'book_infos.book_id')
            ->leftJoin('publications', 'books.publication_id', 'publications.id')
            ->leftJoin('departments', 'books.department_id', 'departments.id')
            ->leftJoin('authors', 'books.author_id', 'authors.id')
            ->leftJoin('categories', 'books.category_id', 'categories.id')
            ->leftJoin('subcategories', 'books.subcategory_id', 'subcategories.id')
            ->leftJoin('recks', 'books.rack', 'recks.id')
            ->select('books.*', 'recks.no as no', 'subcategories.sub_cat_name as sub_cat_name', 'authors.author_name as author_name', 'categories.name as name', 'publications.publication_name as publication_name', 'departments.department_name as department_name', DB::raw('group_concat(isbn_no) as isbn_no'), DB::raw('group_concat(book_code) as book_code'), DB::raw('group_concat(accession_no) as accession_no'))
            ->where(function ($filter) use ($code, $book_name, $publisher_name, $accession_no, $issn_no, $author_name, $department_id, $sub_cat_id, $rack, $from_enlisted_date, $to_enlisted_date, $book_status) {
                if (!empty($code))
                    $filter->where('code', 'LIKE', "%{$code}%");
                if (!empty($book_name))
                    $filter->where('book_name', 'LIKE', "%{$book_name}%");
                if (!empty($publisher_name))
                    $filter->where('publication_id', 'LIKE', "%{$publisher_name}%");
                if (!empty($accession_no))
                    $filter->where('book_infos.accession_no', 'LIKE', "%{$accession_no}%");
                if (!empty($issn_no))
                    $filter->where('isbn', 'LIKE', "%{$issn_no}%");
                if (!empty($author_name))
                    $filter->where('author_id', 'LIKE', "%{$author_name}%");
                if (!empty($department_id))
                    $filter->where('department_id', 'LIKE', "%{$department_id}%");
                if (!empty($sub_cat_id))
                    $filter->where('subcategory_id', 'LIKE', "%{$sub_cat_id}%");
                if (!empty($rack))
                    $filter->where('rack', 'LIKE', "%{$rack}%");
                if (!empty($book_status))
                    $filter->where('book_status', '==', $book_status);
                if (!empty($from_enlisted_date))
                    $filter->whereBetween('books.enlisted_date', [$from_enlisted_date, $to_enlisted_date]);
            })
            ->groupBy('book_infos.book_id')
            ->orderBy('id', 'desc')
            ->get();
        // ->paginate(20);
        // ->paginate(100)->appends(request()->query());
        return view('admin.book.book-list', [
            'books' => $books
        ]);
    }


}
