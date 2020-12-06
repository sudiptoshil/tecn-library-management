@extends('admin.master')

@section('body')

    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="row">
                <div class=" col-lg-3 col-md-6 col-sm-6 col">
                    <div class="dash-widget2 dash-widget5">
                            <span class="dash-widget-icon text-info">
                                <i class="icofont-chart-bar-graph"></i>
                            </span>
                        <div class="text-center">
                            <?php
                            $requestIssue = DB::table('bookings')
                            ->where('status',0)
                            ->count();
                            
                            
                            ?>
                            <h5>Request For Issue </h5>
                            <h4>{{$requestIssue}}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-3">
                    <div class="dash-widget2 dash-widget5">
                            <span class="dash-widget-icon text-secondary">
                                <i class="icofont-ui-user"></i>
                            </span>
                        <div class="text-center">
                            <h5>Request For Return</h5>
                            <?php
                            $requestReturing = DB::table('bookings')
                            ->where('status',2)
                            ->count();
                            
                            ?>
                            <h4>{{$requestReturing}}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-3">
                    <div class="dash-widget2 dash-widget5">
                            <span class="dash-widget-icon text-primary">
                                <i class="icofont-files-stack"></i>
                            </span>
                        <div class="text-center">
                            <h5>Present Issued</h5>
                            <?php
                            $presentIssue = DB::table('bookings')
                            ->where('status',1)
                            ->count();
                            
                            ?>
                            <h4>{{$presentIssue}}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-3">
                    <div class="dash-widget dash-widget5">
                            <span class="dash-widget-icon text-success">
                                <i class="icofont-tasks"></i>
                            </span>
                        <div class="text-center">
                            <h5>Over Day Book</h5>
                                <?php
                            $overday = DB::table('bookings')
                            // ->where('request_date','>','x_date')
                            ->where('x_date','<',date('Y-m-d'))
                            ->whereNull('return_date')
                            ->count();
                            
                            
                            ?>
                            <h4>{{$overday}}</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-info text-white">
                            <h4>Request For Issued</h4>
                        </div>
                        <?php
                         $requestIssue  = DB::table('bookings')
                        ->join('students','bookings.student_id','students.id')
                        ->join('books','bookings.book_id','books.id')
                        ->select('bookings.*', 'students.name','books.book_name')
                        ->where('status',0)
                        ->limit(5)
                        ->get();
                        
                        ?>
                         <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Student Name</th>
                                    <th>Request Date </th>
                                    <th>Expected Return  Date</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                
                               @foreach($requestIssue as $v_request)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_request->book_name}}</td>
                                    <td>{{$v_request->name}}</td>
                                    <td>{{$v_request->request_date}}</td>
                                    <td>{{$v_request->x_date}}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <!--<div id="curve_chart" style="width: 100%; height: 500px"></div>-->
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                         <?php
                         $requestReturn  = DB::table('bookings')
                        ->join('students','bookings.student_id','students.id')
                        ->join('books','bookings.book_id','books.id')
                        ->select('bookings.*', 'students.name','books.book_name')
                        ->where('status',2)
                        ->limit(5)
                        ->get();
                        
                        ?>
                        <div class="card-header bg-info text-white">
                            <h4>Request For Return</h4>
                        </div>
                         <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Student Name </th>
                                    <th>Request Date </th>
                                    <th>Expected Return  Date</th>
                                    <th>Return  Date</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                               @foreach($requestReturn as $v_return)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_return->book_name}}</td>
                                    <td>{{$v_return->name}}</td>
                                    <td>{{$v_return->request_date}}</td>
                                    <td>{{$v_return->x_date}}</td>
                                    <td>{{$v_return->return_date}}</td>
                                </tr>
                               @endforeach
                            </tbody>
                        </table>
                        <!--<div id="donutchart" style="width: 100%; height: 500px"></div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
