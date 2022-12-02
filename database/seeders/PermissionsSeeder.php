<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use DB;
class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');
        Permission::truncate();
        Permission::create(["name"=>"users","guard_name"=>"api"]);
        Permission::create(["name"=>"roles","guard_name"=>"api"]);
        DB::statement('SET FOREIGN_KEY_CHECKS = 1');
     
    }
}
