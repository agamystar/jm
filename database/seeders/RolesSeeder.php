<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use DB;
class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');
        Role::truncate();
        Role::create(["name"=>"admin","guard_name"=>"api"]);
        Role::create(["name"=>"staff","guard_name"=>"api"]);
        DB::statement('SET FOREIGN_KEY_CHECKS = 1');
     
    }
}
