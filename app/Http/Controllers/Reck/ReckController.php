<?php

namespace App\Http\Controllers\Reck;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Reck;

class ReckController extends Controller
{
    public function add_reck()
    {
        return view('admin.reck.add_reck');
    }

    public function save_reck(Request $request)
    {
        $reck = new Reck();
        $reck->no = $request->reck_no;
        $reck->save();
        return \redirect()->back()->with('message','reck saved successfully!!');
    }

    public function manage_reck()
    {
        $reck  = Reck::all();
        return view('admin.reck.manage_reck',[
            'reck' => $reck
        ]);
    }

    public function edit_reck($id)
    {
        // return $id;
        $reck = Reck::find($id);
        return view('admin.reck.edit_reck',[
            'reck' => $reck
        ]);
    }

    public function update_reck(Request $request)
    {
        $reck = Reck::find($request->id);
        $reck->no = $request->reck_no;
        $reck->save();
        return \redirect('manage-reck')->with('message','reck updated successfully!!');
    }
}
