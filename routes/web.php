<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//  Route::get('/', function () {
//      return view('welcome');
//  });
Route::get('/clear-cache', function () {

    echo 333;

    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('config:clear');
    return "Cache Clear";
});

Auth::routes();
Route::group(['middleware' => ['auth']], function () {

    Route::get('/home', 'HomeController@index')->name('home');


// for book management.........................................................
    Route::get('/admin/add/book', 'Admin\Book\BookController@addBook')->name('add-book');
    Route::post('/admin/save/book', 'Admin\Book\BookController@saveBook')->name('save-book');
    Route::get('/admin/manage/book', 'Admin\Book\BookController@manageBook')->name('manage-book');
    Route::get('/admin/edit/book/{id}', 'Admin\Book\BookController@editBook')->name('edit-book');
    Route::post('/admin/update/book', 'Admin\Book\BookController@updateBook')->name('update-book');
    Route::get('/getSubCats/{id}', 'Admin\Book\BookController@getSubCats')->name('getSubCats');
    Route::get('/getBooks/{id}', 'Admin\Book\BookController@getBooks')->name('getBooks');

    Route::get('/admin/book/search/list', 'Admin\Book\BookController@searchedBookList')->name('searched-book-list-admin');
//    Route::post('/admin/book/search/copy-list', 'Admin\Book\BookController@searchedBookListCopy')->name('searched-book-copy-list');
//booking

//for booking management.......................................................
    Route::get('/admin/manage/booking', 'Admin\Booking\BookingController@manageBooking')->name('manage-booking');
    Route::get('/admin/manage/teacher-booking', 'Admin\Booking\BookingController@teacher_manageBooking')->name('teacher-manage-booking');
    Route::post('/autocomplete/fetch', 'Admin\Booking\AutoCompleteController@fetch')->name('autocomplete.fetch');
    Route::post('/autocomplete/fetch-student', 'Admin\Booking\AutoCompleteController@fetch_student')->name('autocomplete.fetch-student');
    Route::post('/autocomplete/book', 'Admin\Booking\AutoCompleteController@bookSearch')->name('autocomplete.book');
    Route::get('/admin/booking/list', 'Admin\Booking\AutoCompleteController@searchedBookingList')->name('searched-booking-list');
    Route::get('/admin/booking/teacher-booking-list', 'Admin\Booking\AutoCompleteController@teachersearchedBookingList')->name('teacher-searched-booking-list');

//new request..................................................................
    Route::get('/admin/manage/request/new/student', 'Admin\Booking\NewRequestController@manageListStudents')->name('manage-new-request-students');
    Route::get('/admin/manage/request/new/teacher', 'Admin\Booking\NewRequestController@manageListTeachers')->name('manage-new-request-teachers');
    Route::post('/admin/manage/issue/current/report/student', 'Admin\Booking\NewRequestController@issueCurrentReportStudent')->name('issue-current-report-student');
    Route::post('/admin/manage/cancel/current/report/student', 'Admin\Booking\NewRequestController@cancelCurrentReportStudent')->name('cancel-current-report-student');
    Route::post('/admin/manage/issue/current/report/teacher', 'Admin\Booking\NewRequestController@issueCurrentReportTeacher')->name('issue-current-report-teacher');
    Route::post('/admin/manage/cancel/current/report/teacher', 'Admin\Booking\NewRequestController@cancelCurrentReportTeacher')->name('cancel-current-report-teacher');


//issued reports................................................................
    Route::get('/admin/manage/reports/issued/students', 'Admin\Booking\IssuedReportController@manageListStudents')->name('manage-issued-report-students');
    Route::get('/admin/manage/reports/issued/teachers', 'Admin\Booking\IssuedReportController@manageListTeachers')->name('manage-issued-report-teachers');


//returned reports.............................................................
    Route::get('/admin/manage/reports/returned/student', 'Admin\Booking\ReturnedReportController@manageListStudents')->name('manage-returned-report-students');
    Route::get('/admin/manage/reports/returned/teacher', 'Admin\Booking\ReturnedReportController@manageListTeachers')->name('manage-returned-report-teachers');
    Route::post('/admin/manage/accept/returned/report/student', 'Admin\Booking\ReturnedReportController@acceptReturnedReportStudent')->name('accept-returned-report-student');
    Route::post('/admin/manage/accept/returned/report/teacher', 'Admin\Booking\ReturnedReportController@acceptReturnedReportTeacher')->name('accept-returned-report-teacher');

//cancelled reports............................................................
    Route::get('/admin/manage/reports/cancelled/student', 'Admin\Booking\CancelledReportController@manageListStudents')->name('manage-cancelled-report-students');
    Route::get('/admin/manage/reports/cancelled/teacher', 'Admin\Booking\CancelledReportController@manageListTeachers')->name('manage-cancelled-report-teachers');
// for charge report ..........................................................
    Route::get('/admin/manage/reports/chargereport/student', 'Admin\Booking\ChargeReportController@charge_report_student')->name('charge-report-student');

    Route::get('/admin/manage/reports/chargereport/teacher', 'Admin\Booking\ChargeReportController@charge_report_teacher')->name('charge-report-teacher');

// for charge paid .............................................................
    Route::get('/admin/manage/reports/charge-paid/student/{id}', 'Admin\Booking\ChargeReportController@charge_paid_student')->name('charge-paid-student');

    Route::get('/admin/manage/reports/charge-paid/teacher/{id}', 'Admin\Booking\ChargeReportController@charge_paid_teacher')->name('charge-paid-teacher');


//end of booking................................................................


//new request...................................................................
    Route::get('/admin/manage/request/new', 'Admin\Booking\NewRequestController@manageList')->name('manage-new-request');
    Route::post('/admin/manage/issue/current/report', 'Admin\Booking\NewRequestController@issueCurrentReport')->name('issue-current-report');
    Route::post('/admin/manage/cancel/current/report', 'Admin\Booking\NewRequestController@cancelCurrentReport')->name('cancel-current-report');

//issued reports...............................................................
    Route::get('/admin/manage/reports/issued', 'Admin\Booking\IssuedReportController@manageList')->name('manage-issued-report');


//end of booking

// for category management......................................................
    Route::get('/add-category', 'Category\CategoryController@add_category')->name('add-category');
    Route::post('/save-category', 'Category\CategoryController@save_category')->name('save-category');
    Route::get('/manage-category', 'Category\CategoryController@manage_category')->name('manage-category');
    Route::get('/edit-category{id}', 'Category\CategoryController@edit_category')->name('edit-category');
    Route::post('/update-category', 'Category\CategoryController@update_category')->name('update-category');
    Route::get('/deactivate/category/{id}', 'Category\CategoryController@deactivateCategory')->name('deactivate-category');
    Route::get('/activate/category/{id}', 'Category\CategoryController@activateCategory')->name('activate-category');

// for sub category management..................................................
    Route::get('/sub-category/add', 'Admin\SubCategory\SubCategoryController@add_category')->name('add-sub-category');
    Route::post('/sub-category/save', 'Admin\SubCategory\SubCategoryController@save_category')->name('save-sub-category');
    Route::get('/sub-category/manage', 'Admin\SubCategory\SubCategoryController@manage_category')->name('manage-sub-category');
    Route::get('/sub-category/edit/{id}', 'Admin\SubCategory\SubCategoryController@edit_category')->name('edit-sub-category');
    Route::post('/sub-category/update', 'Admin\SubCategory\SubCategoryController@update_category')->name('update-sub-category');


//    for designation management...................................
    Route::get('/add-designation', 'Designation\DesignationController@add_designation')->name('add-designation');
    Route::post('/add-designation', 'Designation\DesignationController@save_designation')->name('save-designation');
    Route::get('/manage-designation', 'Designation\DesignationController@manage_designation')->name('manage-designation');
    Route::get('/edit-designation/{id}', 'Designation\DesignationController@edit_designation')->name('edit-designation');
    Route::post('/update-designation', 'Designation\DesignationController@update_designation')->name('update-designation');


// for department management...................................................
    Route::get('/add-department', 'Department\DepartmentController@add_department')->name('add-department');
    Route::post('/save-department', 'Department\DepartmentController@save_department')->name('save-department');
    Route::get('/manage-department', 'Department\DepartmentController@manage_department')->name('manage-department');
    Route::get('/edit-department/{id}', 'Department\DepartmentController@edit_department')->name('edit-department');
    Route::post('/update-department', 'Department\DepartmentController@update_department')->name('update-department');
    Route::get('/deactivate/department/{id}', 'Department\DepartmentController@deactivateDepartment')->name('deactivate-department');
    Route::get('/activate/department/{id}', 'Department\DepartmentController@activateDepartment')->name('activate-department');

// for author management.......................................................
    Route::get('/add-author', 'Author\AuthorController@add_author')->name('add-author');
    Route::post('/save-author', 'Author\AuthorController@save_author')->name('save-author');
    Route::get('/manage-author', 'Author\AuthorController@manage_author')->name('manage-author');
    Route::get('/edit-author/{id}', 'Author\AuthorController@edit_author')->name('edit-author');
    Route::post('/update-author', 'Author\AuthorController@update_author')->name('update-author');
    Route::get('/deactivate/author/{id}', 'Author\AuthorController@deactivateAuthor')->name('deactivate-author');
    Route::get('/activate/author/{id}', 'Author\AuthorController@activateAuthor')->name('activate-author');

// for publication management..................................................
    Route::get('/add-publication', 'Publication\PublicationController@add_publication')->name('add-publication');
    Route::post('/save-publication', 'Publication\PublicationController@save_publication')->name('save-publication');
    Route::get('/manage-publication', 'Publication\PublicationController@manage_publication')->name('manage-publication');
    Route::get('/edit-publication/{id}', 'Publication\PublicationController@edit_publication')->name('edit-publication');
    Route::post('/update-publication', 'Publication\PublicationController@update_publication')->name('update-publication');
    Route::get('/deactivate/publication/{id}', 'Publication\PublicationController@deactivatePublication')->name('deactivate-publication');
    Route::get('/activate/publication/{id}', 'Publication\PublicationController@activatePublication')->name('activate-publication');

// for notice management........................................................
    Route::get('/add-notice', 'Notice\NoticeController@add_notice')->name('add-notice');
    Route::post('/save-notice', 'Notice\NoticeController@save_notice')->name('save-notice');
    Route::get('/manage-notice', 'Notice\NoticeController@manage_notice')->name('manage-notice');
    Route::get('/edit-notice/{id}', 'Notice\NoticeController@edit_notice')->name('edit-notice');
    Route::post('/update-notice', 'Notice\NoticeController@update_notice')->name('update-notice');

// for charge management........................................................
    Route::get('/add-charge', 'Charge\ChargeController@add_charge')->name('add-charge');
    Route::post('/save-charge', 'Charge\ChargeController@save_charge')->name('save-charge');
    Route::get('/manage-charge', 'Charge\ChargeController@manage_charge')->name('manage-charge');
    Route::get('/edit-charge/{id}', 'Charge\ChargeController@edit_charge')->name('edit-charge');
    Route::post('/update-charge', 'Charge\ChargeController@update_charge')->name('update-charge');

// for reck management........................................................
    Route::get('/add-reck', 'Reck\ReckController@add_reck')->name('add-reck');
    Route::post('/save-reck', 'Reck\ReckController@save_reck')->name('save-reck');
    Route::get('/manage-reck', 'Reck\ReckController@manage_reck')->name('manage-reck');
    Route::get('/edit-reck/{id}', 'Reck\ReckController@edit_reck')->name('edit-reck');
    Route::post('/update-reck', 'Reck\ReckController@update_reck')->name('update-reck');


// for student management....................................................
    Route::get('/admin/manage/student', 'Admin\Student\StudentController@manageStudent')->name('manage-student');
    Route::get('/admin/edit/student/{id}', 'Admin\Student\StudentController@editStudent')->name('edit-student');
    Route::post('/admin/update/student', 'Admin\Student\StudentController@updateStudent')->name('update-student');
    Route::get('/admin/deactivate/student/{id}', 'Admin\Student\StudentController@deactivateStudent')->name('deactivate-student');
    Route::get('/admin/activate/student/{id}', 'Admin\Student\StudentController@activateStudent')->name('activate-student');
    Route::get('/admin/student', 'Admin\Booking\ChargeReportController@charge_report')->name('student-charge-report');
    Route::get('/admin/student/list', 'Admin\Student\StudentController@searchedStudentList')->name('searched-student-list');


// for teacher management....................................................
    Route::get('/admin/manage/teacher', 'Admin\Teacher\TeacherController@manageTeacher')->name('manage-teacher');
    Route::get('/admin/edit/teacher/{id}', 'Admin\Teacher\TeacherController@editTeacher')->name('edit-teacher');
    Route::post('/admin/update/teacher', 'Admin\Teacher\TeacherController@updateTeacher')->name('update-teacher');
    Route::get('/admin/deactivate/teacher/{id}', 'Admin\Teacher\TeacherController@deactivateTeacher')->name('deactivate-teacher');
    Route::get('/admin/activate/teacher/{id}', 'Admin\Teacher\TeacherController@activateTeacher')->name('activate-teacher');


});

//client side

//teacher

// start teacher register and login............................................
Route::get('/teacher/register', 'Teacher\RegisterController@register')->name('teacher-register');
Route::post('/teacher/register/process', 'Teacher\RegisterController@registerProcess')->name('teacher-register-process');
Route::get('/teacher/login', 'Teacher\LoginController@login')->name('teacher-login');
Route::post('/teacher/login/process', 'Teacher\LoginController@loginProcess')->name('teacher-login-process');

Route::get('/teacher/dashboard', 'Teacher\LoginController@teacherDashboard')->name('teacher-dashboard');
Route::post('/teacher-logout', 'Teacher\LoginController@teacher_logout')->name('teacher-logout');
// end teacher register and login..............................................

// start teacher book charge...................................................
Route::get('/teacher/book-charge', 'Teacher\BookChargeController@teacher_charge_report')->name('teacher-book-charge');
Route::get('/teacher/teacher-add-book', 'Teacher\BookController@teacher_add_book')->name('teacher-add-book');
Route::post('/teacher/teacher-add-book', 'Teacher\BookController@teacher_save_book')->name('teacher-save-book');
// end teacher book charge......................................................
//teacher add book....
// start teacher latest book...................................................
Route::get('/teacher/latest', 'Teacher\LatestBookController@bookList')->name('teacher-latest-book');
// start teacher latest book...................................................

// start teacher book search...................................................
Route::get('/teacher/book-search', 'Teacher\BookSearchController@book_search')->name('teacher-book-search');
Route::post('/teacher/book-search', 'Teacher\BookSearchController@display_book')->name('teacher-display-book');
Route::get('/teacher-show-pdf/{id}', 'Teacher\BookSearchController@show_pdf')->name('teacher-show-pdf');

// end teacher book search.....................................................

// start teacher favourite books.....................................
Route::get('/teacher/favorite-book', 'Teacher\BookingController@favourite_books')->name('teacher-favorite-book');
// end teacher favourite books..................................................

// start teacher  books request.................................................

Route::get('/teacher/teacher-book-request', 'Teacher\BookingController@request_book')->name('teacher-book-request');

Route::post('/teacher/confirm-book-request', 'Teacher\BookingController@confirm_request_book')->name('teacher-confirm-book-request');

// end teacher  books request...................................................

// start teacher  change  password and profile..................................

Route::get('/teacher/change-password', 'Teacher\LoginController@password_change')->name('teacher-change-password');
Route::post('/teacher/update-password', 'Teacher\LoginController@update_password')->name('teacher-update-password');
Route::get('/teacher/profile', 'Teacher\ProfileController@profile')->name('teacher-profile');
Route::post('/teacher/profile', 'Teacher\ProfileController@update_profile')->name('teacher-update-profile');
// end teacher  change  password and profile....................................

// start teacher return book....................................................

Route::get('/teacher/return-book/{id}', 'Teacher\BookingController@return_book')->name('teacher-return-book');
// end teacher return book....................................................


Route::get('/teacher/notices/list', 'Teacher\NoticeController@noticeList')->name('teacher-notice-list');
Route::get('/teachr/notice/details/{id}', 'Teacher\NoticeController@noticeDetails')->name('teacher-notice-details');


// for student part.............................................................
Route::get('/student/register', 'Student\RegisterController@register')->name('student-register');
Route::post('/student/register/process', 'Student\RegisterController@registerProcess')->name('student-register-process');
Route::get('/student/login', 'Student\LoginController@login')->name('student-login');

Route::get('/student-dashboard', 'Student\LoginController@student_dashboard')->name('student-dashboard');
Route::post('/student/login/process', 'Student\LoginController@loginProcess')->name('student-login-process');
Route::post('/student-logout', 'Student\LoginController@logout')->name('student-logout');
// for book search.............................................................
Route::get('/book-search', 'Student\BookSearchController@book_search')->name('book-search');
Route::post('/book-search', 'Student\BookSearchController@display_book')->name('display-book');
Route::get('/show-pdf/{id}', 'Student\BookSearchController@show_pdf')->name('show-pdf');

Route::post('/book-name', 'Student\BookSearchController@book_name')->name('book-name');
Route::post('/publication-name', 'Student\BookSearchController@publication_name')->name('publication-name');
Route::post('/author-name', 'Student\BookSearchController@author_name')->name('author-name');
Route::get('/get-categories/{id}', 'Student\BookSearchController@get_categories')->name('get-categories');
Route::get('/all-book', 'Student\StudentController@all_books')->name('all-book');
// for student book charge report............................................
Route::get('/student-book-charge', 'Student\BookChargeController@student_charge_report')->name('student-book-charge');
// Route::get('/pending-book', 'Student\StudentController@pending_book')->name('pending-book');
// Route::get('/receive-book', 'Student\StudentController@receive_book')->name('receive-book');
// end book search..............................................................

// for student password change..................................................
Route::get('/change-password', 'Student\LoginController@password_change')->name('change-password');
Route::post('/update-password', 'Student\LoginController@update_password')->name('update-password');
// for student book request.....................................................
Route::get('/book-request', 'Student\BookingController@request_book')->name('book-request');
Route::post('/confirm-book-request', 'Student\BookingController@confirm_request_book')->name('confirm-book-request');
Route::get('/return-book/{id}', 'Student\BookingController@return_book')->name('return-book');

//student latest book list......................................................
Route::get('/student/books/latest', 'Student\LatestBookController@bookList')->name('student-latest-book');
// student favourite book list..................................................
Route::get('/favorite-book', 'Student\BookingController@favourite_books')->name('favorite-book');

// for student profile update..................................................
Route::get('/profile', 'Student\ProfileController@profile')->name('profile');
Route::post('/profile', 'Student\ProfileController@update_profile')->name('update-profile');


//student notices
Route::get('/student/notices/list', 'Student\NoticeController@noticeList')->name('student-notice-list');
Route::get('/student/notice/details/{id}', 'Student\NoticeController@noticeDetails')->name('student-notice-details');


// for email verification
// Route::get('/verifyemailfirst', 'Student\RegisterController@verify_email_first')->name('verifyemailfirst');
// Route::get('/verify/{email}/{varify_token}', 'Student\RegisterController@send_email_done')->name('sendemaildone');

// end student .................................................................







