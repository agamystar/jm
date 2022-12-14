<?php

namespace Database\Seeders;

use App\Models\BusSeats;
use Illuminate\Database\Seeder;

class BusSeatsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BusSeats::create([
            "id" => 1,
            "bus_id" => 1,
            "seat_number" => "A-1",
        ]);
        BusSeats::create([
            "id" => 2,
            "bus_id" => 1,
            "seat_number" => "A-2",
        ]);
        BusSeats::create([
            "id" => 3,
            "bus_id" => 1,
            "seat_number" => "A-3",
        ]);
        BusSeats::create([
            "id" => 4,
            "bus_id" => 1,
            "seat_number" => "A-4",
        ]);
        BusSeats::create([
            "id" => 5,
            "bus_id" => 1,
            "seat_number" => "A-5",
        ]);
        BusSeats::create([
            "id" => 6,
            "bus_id" => 1,
            "seat_number" => "A-6",
        ]);
        BusSeats::create([
            "id" => 7,
            "bus_id" => 1,
            "seat_number" => "A-7",
        ]);
        BusSeats::create([
            "id" => 8,
            "bus_id" => 1,
            "seat_number" => "A-8",
        ]);
        BusSeats::create([
            "id" => 9,
            "bus_id" => 1,
            "seat_number" => "A-9",
        ]);

        BusSeats::create([
            "id" => 11,
            "bus_id" => 1,
            "seat_number" => "A-11",
        ]);
        BusSeats::create([
            "id" => 12,
            "bus_id" => 1,
            "seat_number" => "A-12",
        ]);

///////////////////////////////////////////////////////////////

        BusSeats::create([
            "id" => 13,
            "bus_id" => 2,
            "seat_number" => "B-1",
        ]);
        BusSeats::create([
            "id" => 14,
            "bus_id" => 2,
            "seat_number" => "B-2",
        ]);
        BusSeats::create([
            "id" => 15,
            "bus_id" => 2,
            "seat_number" => "B-3",
        ]);
        BusSeats::create([
            "id" => 16,
            "bus_id" => 2,
            "seat_number" => "B-4",
        ]);
        BusSeats::create([
            "id" => 17,
            "bus_id" => 2,
            "seat_number" => "B-5",
        ]);
        BusSeats::create([
            "id" => 18,
            "bus_id" => 2,
            "seat_number" => "B-6",
        ]);
        BusSeats::create([
            "id" => 19,
            "bus_id" => 2,
            "seat_number" => "B-7",
        ]);
        BusSeats::create([
            "id" => 20,
            "bus_id" => 2,
            "seat_number" => "B-8",
        ]);
        BusSeats::create([
            "id" => 21,
            "bus_id" => 2,
            "seat_number" => "B-9",
        ]);

        BusSeats::create([
            "id" => 22,
            "bus_id" => 2,
            "seat_number" => "B-11",
        ]);
        BusSeats::create([
            "id" => 23,
            "bus_id" => 2,
            "seat_number" => "B-12",
        ]);
        BusSeats::create([
            "id" => 24,
            "bus_id" => 2,
            "seat_number" => "B-12",
        ]);


        
    }
}
