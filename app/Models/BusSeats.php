<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BusSeats extends Model
{
    use HasFactory;

    public function bus()
    {
       return $this->belongsTo(Bus::class);
    }
    public function bookings()
    {
       return $this->hasMany(Booking::class,"seat_id");
    }
}
