<?php

namespace App\Models;

use App\Models\User;
use App\Models\BusSeats;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Booking extends Model
{
    protected $fillable=["seat_id","from_stop_id","to_stop_id","user_id"];
    use HasFactory;

    public function bus_seat()
    {
       return $this->belongsTo(BusSeats::class,"seat_id");
    }
    public function user()
    {
       return $this->belongsTo(User::class,"user_id");
    }
}
