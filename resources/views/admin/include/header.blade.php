<div class="header">
         <script>

        function checkpaid()
        {
            check = confirm('Are you sure to paid this payment?');
            if(check)
            {
               return true; 
            }
            else {
                return false;
            }
                
            }
    </script>
    <div class="container-fluid">
        <div class="header-left">
            <a id="toggle-menu" href="#sidebar" class="logo">
                <i class="icofont-navigation-menu"></i>
            </a>
        </div>
        <div class="header-right">
            <div class="page-title-box pull-left">
                 <h5 ><span style="color:red">TECN Library Management System</span> <span style="color:blue">Textile Engineering  College, Noakhali</span></h5>
            </div>
            <a id="mobile_btn" class="mobile_btn pull-left" href="#sidebar">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </a>
            <ul class="nav navbar-nav navbar-right user-menu pull-right">
                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" role="button" id="profileLinkDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span><i class="far fa-user"></i></span> {{ Auth::user()->name }}
                    </a>

                    <div class="dropdown-menu" aria-labelledby="profileLinkDropdown">
                        <a class="dropdown-item" href="#">Profile</a>
                        <a class="dropdown-item" href="{{route('password.request')}}">Change password</a>
                        <a href="#" class="dropdown-item" onclick="event.preventDefault();document.getElementById('logoutForm').submit();">Logout</a>
                        <form id="logoutForm" action="{{route('logout')}}" method="post">
                            @csrf
                        </form>

                    </div>
                </div>

            </ul>

            <div class="dropdown mobile-user-menu pull-right">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                <ul class="dropdown-menu pull-right">
                    <li><a href="login.php">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
