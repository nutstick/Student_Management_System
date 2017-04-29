<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use App\Student;

class Enrollment extends Model
{
    protected $appends = ['SID'];
    public $table = 'student_enroll_in_section';

    public function SID(){
        return $this->belongsTo(Student::class);
    }

    public function SID_page_slug(){
        return '';
    }

    public function getKeyName () {
        return 'id';
    }

    public $timestamps = false;
}
