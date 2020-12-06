<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Author;

class AuthorController extends Controller
{
    public function add_author()
    {
        return view('admin.author.add_author');
    }

    public function save_author(Request $request)
    {
        Author::save_author_info($request);
        return redirect()->back()->with('message','author saved successfully!!');
    }

    public function manage_author()
    {
        $author = Author::all();
        return view('admin.author.manage_author',[
            'author' => $author
        ]);
    }

    public function edit_author($id)
    {
        $author = Author::find($id);
        return view('admin.author.edit_author',[
            'author' => $author
        ]);
    }

    public function update_author(Request $request)
    {
        $author = Author::find($request->id);
        $author->author_name    = $request->author_name;
        $author->address = $request->address;
        $author->save();
        return redirect('manage-author')->with('message','author updated successfully!!');

    }

    public function deactivateAuthor($id){
        $author = Author::find($id);
        $author->author_status = 0;
        $author->save();
        return redirect('manage-author')->with('message','Author is now deactivated');
    }

    public function activateAuthor($id){
        $author = Author::find($id);
        $author->author_status = 1;
        $author->save();
        return redirect('manage-author')->with('message','Author is now activated');
    }

}
