<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\Mobile\UsersController;
use App\Http\Controllers\Api\Mobile\BookingTripController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace' => 'Api\Mobile', 'prefix' => 'mobile'], function () {
   Route::post('login', [UsersController::class,'login'])->name("login");
   Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('search_trip', [BookingTripController::class,'searchTrip'])->name("search_trip");
    Route::post('booking_trip', [BookingTripController::class,'bookingTrip'])->name("booking_trip");
   });
});


