<?php

namespace Database\Seeders;

use App\Models\Bus;
use Illuminate\Database\Seeder;

class BusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Bus::create([
            "id"=>1,
            "name"=>"Bus Cairo-Asyut"
        ]);
        Bus::create([
            "id"=>2,
            "name"=>"Bus  Alminia-Asyut"
        ]);
       
    }
}
