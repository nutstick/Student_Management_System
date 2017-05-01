<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataRow;
use TCG\Voyager\Models\DataType;

class CoursesTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     */
    public function run()
	{
		DB::table('courses')->insert([
			[
				'CID' => '0123101',
				'Ctype' => 'GENED',
				'Cname' => 'PARAGRAP WRITING',
				'Ccredit' => 3
			],
			[
				'CID' => '2110211',
				'Ctype' => 'NONE',
				'Cname' => 'INTRO DATA STRUCT',
				'Ccredit' => 3
			],
			[
				'CID' => '2304102',
				'Ctype' => 'NONE',
				'Cname' => 'GEN PHYS II',
				'Ccredit' => 3
			],
			[
				'CID' => '5500208',
				'Ctype' => 'NONE',
				'Cname' => 'COM PRES SKIL',
				'Ccredit' => 3
			],
			[
				'CID' => '2601111',
				'Ctype' => 'GENED',
				'Cname' => 'BUS ACCTG',
				'Ccredit' => 3
			],
			
		]);
		$all =[];
		for( $i=1 ; $i<=32 ; $i++ )
		{
			if ($i <= 6 )	$note = '1ST ECON ONLY';
			else	$note = 'GENED-HU';
			$record = [
						'id' => $i+8,
						'CID' => '0123101',
						'SeNum' => $i,
						'SeTerm' => 2,
						'SeYear' => 2017,
						'SeNote' => $note
						];
			array_push($all,$record);
		}
		DB::table('sections')->insert($all);
		
		$all =[];
		for( $i=1 ; $i<=3 ; $i++ )
		{
			$record = [
						'CID' => '2110211',
						'SeNum' => $i,
						'SeTerm' => 2,
						'SeYear' => 2017,
						'SeNote' =>  ''
						];
			array_push($all,$record);
		}
		DB::table('sections')->insert($all);
		
		$teachers = [];
		for ($i=1 ; $i <=4 ; $i++ )
		{
			DB::table('users')->insert([
				[
					'role_id' => 3,
					'fname' => 'Teacher',
					'lname' => $i,
					'email' => 'Teacher'.$i.'@chula.ac.th',
					'avatar' => 'users/default.png',
				]
			]);
			
			DB::table('teachers')->insert([
				[
					'user' => $i+4
				]
			]);
		}
		$all = [];
		$temp = "TempName ";
		$temp2 = "TempSur ";
		$email = "@chula.ac.th";
		$begin = 5530544321;
		$str ="";
		$f = 1;
		$para = 9;
		$gen = 41;
		for($i=0; $i<400 ; $i++)
		{
			if ( $i % 100 == 0 )	$begin = $begin + 100000000;
			$str = (string)$i;
			$record = [	
						'SID' => $begin + ($i*1000),
						'SFname' => $temp.$str,
						'SLname' => $temp2.$str,
						'Sgender' => 'male',
						'Sbirth' =>  '1996-12-07',
						'Snation' => 'th',
						'Senroll_date' => '2015-12-31',
						'Sedu_stat' => 'NONE',
						'Shealth_stat' => 'HEALTHY',
						'Sbehav_score' => 0,
						'Sdetail' => NULL,
						'TID' => $i+2, //1Dominant
						'Dname' => 'Computer Engineering',
						'Sgrad_stat' => 'STUDYING'	
			];
			DB::table('students')->insert([$record]);
			
			DB::table('student_enroll_in_section')->insert([
				[
					'SID' => $begin+($i*1000),
					'section_id' => $f,
					'grade' => rand(2,8) / 2.0,
					'score' => 10
				],
				[
					'SID' => $begin+($i*1000),
					'section_id' => $para,
					'grade' => rand(2,8) / 2.0,
					'score' => 10
				],
				[
					'SID' => $begin+($i*1000),
					'section_id' => $gen,
					'grade' => rand(2,8) / 2.0,
					'score' => 10
				]
			]);
			
			$f++;
			$para++;
			$gen++;
			if ($f == 9)	$f = 1;
			if ($para == 41 )	$para = 9;
			if ($gen == 44 )	$gen = 41;
		}
		
		
	}   
    
}
