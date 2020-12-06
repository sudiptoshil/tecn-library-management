@extends('teacher.master')

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
                            <h5>Total Received </h5>
                            <?php
                            $teacher  = Session::get('teacher_id');
                            $booking = DB::table('bookings')
                            ->where('status',1)
                            ->where('teacher_id','=',$teacher)
                            ->count();
                            
                            
                            ?>
                            <h4>{{$booking}}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-3">
                    <div class="dash-widget2 dash-widget5">
                            <span class="dash-widget-icon text-secondary">
                                <i class="icofont-ui-user"></i>
                            </span>
                        <div class="text-center">
                            <h5>Total Returned</h5>
                            <?php
                            $teacher  = Session::get('teacher_id');
                            $toreturn = DB::table('bookings')
                            ->where('status',2)
                            ->where('teacher_id','=',$teacher)
                            ->count();
                            
                            
                            ?>
                            <h4>{{$toreturn}}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-3">
                    <div class="dash-widget2 dash-widget5">
                            <span class="dash-widget-icon text-primary">
                                <i class="icofont-files-stack"></i>
                            </span>
                        <div class="text-center">
                            <h5>Not Returned </h5>
                              <?php
                            $teacher  = Session::get('teacher_id');
                            $notreturn = DB::table('bookings')
                            // ->where('x_date','>','returned_date')
                            ->whereNull('return_date')
                            ->where('teacher_id','=',$teacher)
                            // ->where('status',1)
                            ->count();
                            
                            
                            ?>
                            <h4>{{$notreturn}}</h4>
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
                            $teacher  = Session::get('teacher_id');
                            $overday = DB::table('bookings')
                            // ->where('request_date','>','x_date')
                            ->where('x_date','<',date('Y-m-d'))
                            ->whereNull('return_date')
                            ->where('teacher_id','=',$teacher)
                            ->count();
                            
                            
                            ?>
                            <h4>{{$overday}}</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="card-box">
                    <div class="card-block">
                        <h5 class="text-bold card-title">Pending Books</h5>
                        <h3 style="color:red" align="center"></h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Request Date </th>
                                    <th>Expected Return  Date</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($pendingbooks as $v_book)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_book->book_name}}</td>
                                    <td>{{$v_book->request_date}}</td>
                                    <td>{{$v_book->x_date}}</td>
                                    
                                    
                                <td>
                                 
                                </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                <div class="col-lg-6">
                <div class="card-box">
                    <div class="card-block">
                        <h5 class="text-bold card-title">Receive Books</h5>
                        <h3 style="color:red" align="center"></h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Book Name</th>
                                    <th>Request  Date</th>
                                    <th>Expected Return  Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @foreach($receivebooks as $v_book)
                                <tr>
                                <td>{{$i++}}</td>
                                    <td>{{$v_book->book_name}}</td>
                                    <td>{{$v_book->request_date}}</td>
                                    <td>{{$v_book->x_date}}</td>
                                    
                                <td>
                                 
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
