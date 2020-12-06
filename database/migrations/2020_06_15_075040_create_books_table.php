<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('code');
            $table->string('name');
            $table->string('isbn');
            $table->string('edition');
            $table->string('copy');
            $table->string('author');
            $table->string('publication');
            $table->string('language');
            $table->integer('category_id')->unsignedInteger();
            $table->integer('subcategory_id')->unsignedInteger();
            $table->string('rack');
            $table->string('rat');
            $table->date('enlisted_date');
            $table->string('condition');
            $table->tinyInteger('show');
            $table->tinyInteger('removed');
            $table->date('date');
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
        Schema::dropIfExists('books');
    }
}
