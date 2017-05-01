<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
	public function run()
	{
		DB::table('users')->insert([
			[	'id' => 5,
				'role_id' => 1,
				'name' => 'Somchai',
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
		/*DB::table('students')->insert([
			[	'SID' => '5731068921',
				'SF'
		]
		]);*/
	}
}