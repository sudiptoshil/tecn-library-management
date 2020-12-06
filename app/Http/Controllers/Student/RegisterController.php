<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Model\Department;
use App\Model\Student;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\str;
use Mail;
use DB;

// use App\Mail\verifystudent;

class RegisterController extends Controller
{
    public function register()
    {
        return view('student.auth.register', [
            'departments' => Department::get()
        ]);
    }

    public function registerProcess(Request $request)
    {

        request()->validate([

            'name' => 'required|min:2|max:30',
            'password' => 'required|min:5|max:40',
            'reg_no' => 'required|unique:students,reg_no,',
        ]);

        $email = DB::table('students')->where('email', $request->email)->get();


        if ($email->isEmpty()) {

            $student = new Student();
            if ($request->file('photo')) {
                $studentImage = $request->file('photo');
                $imageName = $studentImage->getClientOriginalName();
                $directory = 'public/student-images/';
                //$productImage->move($directory,$imageName);
                $imageUrl = $directory . $imageName;
                Image::make($studentImage)->resize(200, 200)->save($imageUrl);

                $student->name = $request->name;
                $student->reg_no = $request->reg_no;
                $student->department_id = $request->department_id;
                $student->email = $request->email;
                $student->password = bcrypt($request->password);
                $student->varify_token = str::random(40);
                $student->year = $request->year;
                $student->student_session = $request->student_session;
                $student->phone = $request->phone;
                $student->note = $request->note;
                $student->photo = $imageUrl;
                $student->save();
            } else {
                $student->name = $request->name;
                $student->reg_no = $request->reg_no;
                $student->department_id = $request->department_id;
                $student->email = $request->email;
                $student->password = bcrypt($request->password);
                $student->varify_token = str::random(40);
                $student->year = $request->year;
                $student->student_session = $request->student_session;
                $student->phone = $request->phone;
                $student->note = $request->note;
                $student->save();
            }
            // $thisstudent = Student::find($student->id);
            // $this->sendemail($thisstudent);

            // return redirect('verifyemailfirst');
            return redirect('/student/login');
        } else {
            return redirect()->back()->with('message', 'Email already exist!!');
        }


    }

    // public function verify_email_first()
    // {
    //     return view('student.auth.verifyemailfirst');
    // }

    // public function send_email_done($email,$varify_token)
    // {
    //     // return $email;
    //     // return $varify_token;
    //     $student = Student::where(['email'=> $email,'varify_token'=>$varify_token])->first();
    //     // return $client;
    //     if($student)
    //     {
    //       return Student::where(['email'=> $email,'varify_token'=>$varify_token])->update(['status'=>'1',]);
    //     }
    //     // return redirect('/');
    // }


    // public function sendemail($thisstudent)
    // {
    //     Mail::to($thisstudent['email'])->send(new verifystudent($thisstudent));
    // }
}
