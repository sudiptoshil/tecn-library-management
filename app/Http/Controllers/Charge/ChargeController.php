<?php

namespace App\Http\Controllers\Charge;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Charge;

class ChargeController extends Controller
{
    public function add_charge()
    {
        return view('admin.charge.add_charge');
    }

    public function save_charge(Request $request)
    {
        $charge = new Charge();
        $charge->charge_name = $request->name;
        $charge->type = $request->type;
        $charge->save();
        return redirect()->back()->with('message','charge saved successfully!!');

    }

    public function manage_charge()
    {
        $charge  = Charge::all();
        return view('admin.charge.manage_charge',[
            'charge' => $charge
        ]);
    }

    public function edit_charge($id)
    {
        // return $id;
        $charge  = Charge::find($id);
        return view('admin.charge.edit_charge',[
            'charge' => $charge
        ]);

    }

    public function update_charge(Request $request)
    {
        $charge  = Charge::find($request->id);
        $charge->name  = $request->name;
        $charge->type  = $request->type;
        $charge->save();
        return redirect('manage-charge')->with('message','charge updated successfully!!');
    }
}
