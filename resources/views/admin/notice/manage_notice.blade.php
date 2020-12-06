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
                            <a type="button" style="margin-bottom:2%" href="{{route('add-notice')}}" class="btn btn-primary">Add Notice</a>
        
                            </div>
                        <h3 style="color:red" align="center">{{Session::get('message')}}</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Notice Title</th>
                                    <th>Notice Description</th>
                                    <th>Notice Status</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($notice as $v_notice)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_notice->title}}</td>
                                    <td>{{Str::limit($v_notice->description, $limit = 50, $end = '......')}}</td>
                                    @if($v_notice->status ==1)
                                    <td style="color:green"><i>published</i></td>
                                    @else
                                    <td style="color:red"><i>unpublished</i></td>
                                    @endif
                                <td>{{$v_notice->updated_at}}</td>    
                                <td><a href="{{route('edit-notice',['id'=>$v_notice->id])}}">Edit</a></td>
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