<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<div class="col-md-12">
    <div class="row">
{{--        <iframe src="{{asset($book->book_file)}}"  style=" width: 100vh; height: 100vh;"></iframe>--}}
        <iframe src="{{asset($book->book_file)}}" frameborder="0" style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:100%;width:100%;position:absolute;top:0px;left:0px;right:0px;bottom:0px" height="100%" width="100%"></iframe>
    </div>
</div>

</body>
</html>