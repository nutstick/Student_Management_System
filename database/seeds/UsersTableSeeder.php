<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     *
     * @return void
     */
    public function run()
    {
        // if (User::count() == 0) {
        //     $role = Role::where('name', 'admin')->firstOrFail();

        //     User::create([
        //         'name'           => 'Admin',
        //         'email'          => 'admin@admin.com',
        //         'password'       => bcrypt('password'),
        //         'remember_token' => str_random(60),
        //         'role_id'        => $role->id,
        //     ]);
        // }

        DB::table('users')->insert([
            [	'id' => 5,
                'role_id' => 1,
                'fname' => 'Somchai',
                'lname' => 'Somchai',
                'email' => 'Somchai@chula.ac.th',
                'avatar' => 'users/default.png',
                'password' => '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO',
                'remember_token' => 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX',
                'created_at' => '2017-04-17 09:01:12',
                'updated_at' => '2017-04-17 09:01:12'
            ],
            [	'id' => 6,
                'role_id' => 1,
                'name' => 'Somchai2',
                'email' => 'Somchai2@chula.ac.th',
                'avatar' => 'users/default.png',
                'password' => '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO',
                'remember_token' => 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX',
                'created_at' => '2017-04-17 09:01:12',
                'updated_at' => '2017-04-17 09:01:12'
            ],
            [	'id' => 7,
                'role_id' => 1,
                'name' => 'Somchai3',
                'email' => 'Somchai3@chula.ac.th',
                'avatar' => 'users/default.png',
                'password' => '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO',
                'remember_token' => 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX',
                'created_at' => '2017-04-17 09:01:12',
                'updated_at' => '2017-04-17 09:01:12'
            ],
        ]);
    }
}
