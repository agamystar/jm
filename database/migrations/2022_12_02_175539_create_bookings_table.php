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
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');

            
            $table->unsignedBigInteger('seat_id');
            $table->foreign('seat_id')->references('id')->on('bus_seats');

            $table->unsignedBigInteger('from_stop_id');
            $table->foreign('from_stop_id')->references('id')->on('stops');
            
            $table->unsignedBigInteger('to_stop_id');
            $table->foreign('to_stop_id')->references('id')->on('stops');
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
        Schema::dropIfExists('stops');
    }
}
