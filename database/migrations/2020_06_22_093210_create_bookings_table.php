<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('student_id');
            $table->bigInteger('book_id');
            $table->date('request_date');
            $table->date('issue_date');
            $table->date('return_date');
            $table->date('returned_date');
            $table->string('status');
            $table->string('charge_type');
            $table->string('charge');
            $table->integer('charge_paid');
            $table->date('payment_date');
            $table->string('issued_by');
            $table->string('received_by');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bookings');
    }
}
