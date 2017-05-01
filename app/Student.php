<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use App\BehaviorRecord;

class Student extends Model
{
    protected $appends = ['id'];
    protected $casts = [
        'SID' => 'string',
    ];

    public $timestamps = false;

    public function getIdAttribute() {
        return $this->SID;
    }

    public function getKeyName() {
        return 'SID';
    }

    public function getFullnameAttribute() {
        return $this->SFname.' '.$this->SLname;
    }
}
