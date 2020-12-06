<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}public/assets/admin/images/favicon.png">
    <title>Student</title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/icofont.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}public/assets/admin/css/style.css">
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

   
    <!--[if lt IE 9]>
    
    <script src="{{asset('/')}}public/assets/admin/js/html5shiv.min.js"></script>
    <script src="{{asset('/')}}public/assets/admin/js/respond.min.js"></script>
    <![endif]-->
    
  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>

    <!--Load the AJAX API-->
    <script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/google-chart.js"></script>
  
  


<style>
        .ui-autocomplete {
            position: fixed;
            top: 100%;
            left: 0;
            z-index: 1051 !important;
            float: left;
            display: none;
            min-width: 160px;
            width: 160px;
            padding: 5px;
            margin: 2px 0 0 0;
            list-style: none;
            background-color: #ffffff;
            border-color: #ccc;
            border-color: rgba(0, 0, 0, 0.2);
            border-style: solid;
            border-width: 1px;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border-radius: 2px;
            -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            -webkit-background-clip: padding-box;
            -moz-background-clip: padding;
            background-clip: padding-box;
            *border-right-width: 2px;
            *border-bottom-width: 2px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<div class="main-wrapper slide-nav">

    @include('student.include.header')

    @include('student.include.sidebar')


@yield('body')

<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'Sales', 'Expenses'],
            ['2004',  1000,      400],
            ['2005',  1170,      460],
            ['2006',  660,       1120],
            ['2007',  1030,      540]
        ]);

        var options = {
            title: 'Company Performance',
            curveType: 'function',
            legend: { position: 'bottom' }
        };

        var ChartLine = new google.visualization.LineChart(document.getElementById('curve_chart'));
        ChartLine.draw(data, options);

        //    pie chart
        var dataPie = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Work',     11],
            ['Eat',      2],
            ['Commute',  2],
            ['Watch TV', 2],
            ['Sleep',    7]
        ]);

        var options = {
            title: 'My Daily Activities',
            pieHole: 0.4,
        };

        var chartPie = new google.visualization.PieChart(document.getElementById('donutchart'));
        chartPie.draw(dataPie, options);
    }
</script>
</div>
<div class="sidebar-overlay" data-reff=""></div>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/popper.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/Chart.bundle.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/Chart.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/jquery.slimscroll.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/select2.min.js"></script>
<!--date picker-->

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript" src="{{asset('/')}}public/assets/admin/js/app.js"></script>
</body>

</html>
