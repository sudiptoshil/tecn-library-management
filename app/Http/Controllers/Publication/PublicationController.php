<?php

namespace App\Http\Controllers\Publication;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Publication;

class PublicationController extends Controller
{
    public function add_publication()
    {
        return view('admin.publication.add_publication');
    }

    public function save_publication(Request $request)
    {
        Publication::save_publication_info($request);
        return redirect()->back()->with('message','publication saved successfully!!');
    }

    public function manage_publication()
    {
        $publication = Publication::all();
        return view('admin.publication.manage_publication',[
            'publication' => $publication
        ]);
    }

    public function edit_publication($id)
    {
        $publication = Publication::find($id);
        return view('admin.publication.edit_publication',[
            'publication' => $publication
        ]);
    }

    public function update_publication(Request $request)
    {
        $publication = Publication::find($request->id);
        $publication->publication_name      = $request->publication_name;
        $publication->address   = $request->address;
        $publication->save();
        return redirect('manage-publication')->with('message','publication updated successfully!!');

    }

    public function deactivatePublication($id){
        $publication = Publication::find($id);
        $publication->publication_status = 0;
        $publication->save();
        return redirect('manage-publication')->with('message','Publication is now deactivated');
    }

    public function activatePublication($id){
        $publication = Publication::find($id);
        $publication->publication_status = 1;
        $publication->save();
        return redirect('manage-publication')->with('message','Publication is now activated');
    }
}
