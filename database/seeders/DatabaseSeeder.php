<?php

namespace Database\Seeders;

use App\Models\User;
use Database\Seeders\BusSeeder;
use Illuminate\Database\Seeder;
use Database\Seeders\StopSeeder;
use Database\Seeders\BusSeatsSeeder;
use Database\Seeders\BusStopsSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(1)->create();
        $this->call([
            BusSeeder::class,
            StopSeeder::class,
            BusStopsSeeder::class,
            BusSeatsSeeder::class,

        ]);
    }
}
