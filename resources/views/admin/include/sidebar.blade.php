<div class="sidebar opened" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li>
                    <a href="{{route('home')}}"><i class="icofont-dashboard"></i> Dashboard</a>
                </li>
                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Books</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                        <li><a href="{{route('manage-book')}}">Manage Books</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Student Booking</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">

                        <li><a href="{{route('manage-booking')}}">Manage Booking</a></li>
                        <li><a href="{{route('manage-new-request-students')}}">New Request</a></li>
                        <li><a href="{{route('manage-issued-report-students')}}">Issued Reports</a></li>
                        <li><a href="{{route('manage-returned-report-students')}}">Returned Reports</a></li>
                        <li><a href="{{route('charge-report-student')}}">Charge Reports</a></li>

                        <li><a href="{{route('manage-cancelled-report-students')}}">Cancelled Reports</a></li>
                    </ul>
                </li>

                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Staff Booking</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">

                        <li><a href="{{route('teacher-manage-booking')}}">Manage Booking</a></li>
                        <li><a href="{{route('manage-new-request-teachers')}}">New Request</a></li>
                        <li><a href="{{route('manage-issued-report-teachers')}}">Issued Reports</a></li>
                        <li><a href="{{route('manage-returned-report-teachers')}}">Returned Reports</a></li>
                        <li><a href="{{route('charge-report-teacher')}}">Charge Reports</a></li>
                        <li><a href="{{route('manage-cancelled-report-teachers')}}">Cancelled Reports</a></li>
                    </ul>
                </li>

                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Notice</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                        <li><a href="{{route('manage-notice')}}">Manage Notice</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Students</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                        <li><a href="{{route('manage-student')}}">Manage Students</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Staff</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                        <li><a href="{{route('manage-teacher')}}">Manage Staff</a></li>

                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i class="icofont-code"></i><span> Settings</span> <span class="menu-arrow"><i
                                    class="icofont-simple-right"></i></span></a>
                    <ul class="list-unstyled" style="display: none;">
                        <li><a href="{{route('manage-category')}}">Manage Category</a></li>
                        <li><a href="{{route('manage-sub-category')}}">ManageSubCategory</a></li>
                        <li><a href="{{route('manage-department')}}">Manage Department</a></li>
                        <li><a href="{{route('manage-author')}}">Manage Author</a></li>
                        <li><a href="{{route('manage-publication')}}">Manage Publication</a></li>
                        <li><a href="{{route('manage-reck')}}">Manage Rack</a></li>
                        <li><a href="{{route('manage-charge')}}">Manage Charge</a></li>
                        <li><a href="{{route('manage-designation')}}"> Mange Designation</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
