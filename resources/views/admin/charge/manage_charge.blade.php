@extends('admin.master')
@section('body')
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
         
        <div class="row">

            <div class="col-lg-12">
                <div class="card-box">
                    <div class="card-block">
                        
                        <div class="d-flex justify-content-end">
                            <a type="button" style="margin-bottom:2%" href="{{route('add-charge')}}" class="btn btn-primary">Add Charge</a>
                            </div>
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Charge Name</th>
                                    <th>Charge Percent</th>
                                    <th>Action</th>

                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($charge as $v_charge)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_charge->charge_name}}</td>
                                    <td>{{$v_charge->type}}</td>
                                <td>
                                    <a href="{{route('edit-charge',['id'=>$v_charge->id])}}" class="ml-2">Edit</a>
                                </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
