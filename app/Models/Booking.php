<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $fillable=["seat_id","from_stop_id","to_stop_id","user_id"];
    use HasFactory;
}
