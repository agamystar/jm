<?php

namespace Database\Seeders;

use App\Models\BusStops;
use Illuminate\Database\Seeder;

class BusStopsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BusStops::create([
            "id"=>1,
            "bus_id"=>1,
            "stop_id"=>1
        ]);
        BusStops::create([
            "id"=>2,
            "bus_id"=>1,
            "stop_id"=>2
        ]);
        BusStops::create([
            "id"=>3,
            "bus_id"=>1,
            "stop_id"=>3
        ]);
        BusStops::create([
            "id"=>4,
            "bus_id"=>1,
            "stop_id"=>4
        ]);


        BusStops::create([
            "id"=>5,
            "bus_id"=>2,
            "stop_id"=>3
        ]);
       
        BusStops::create([
            "id"=>6,
            "bus_id"=>2,
            "stop_id"=>4
        ]);
    }
}
