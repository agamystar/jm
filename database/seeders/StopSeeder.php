<?php

namespace Database\Seeders;

use App\Models\Stop;
use Illuminate\Database\Seeder;

class StopSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Stop::create([
            "id"=>1,
            "name"=>"Cairo"
        ]);
        Stop::create([
            "id"=>2,
            "name"=>"AlFayyum"
        ]);
        Stop::create([
            "id"=>3,
            "name"=>"AlMinya"
        ]);
        Stop::create([
            "id"=>4,
            "name"=>"Asyut"
        ]);
    }
}
