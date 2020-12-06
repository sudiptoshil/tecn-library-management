<div class="sidebar opened" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li>
                <a href="{{route('teacher-dashboard')}}"><i class="icofont-dashboard"></i> Dashboard</a>
                </li>
                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Books</span> <span class="menu-arrow"><i class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                         <li><a href="{{route('teacher-latest-book')}}">Latest Books</a></li>
                         <li><a href="{{route('teacher-book-request')}}">Requested Books</a></li>
                        <li><a href="{{route('teacher-book-charge')}}">Charged Report</a></li>
                        <li><a href="{{route('teacher-add-book')}}">Add Books</a></li>

                    </ul>
                </li>
                 <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Book Search</span> <span class="menu-arrow"><i class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                    <li><a href="{{route('teacher-book-search')}}">New Book Search</a></li>
                        <!--<li><a href="">Manage Books</a></li>-->
                    </ul>
                </li>

                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Notice List</span> <span class="menu-arrow"><i class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                        <li><a href="{{route('teacher-notice-list')}}">Click Here</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>
