<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $appends = ['id'];
    protected $casts = [
        'Dname' => 'string',
    ];


    public $timestamps = false;

    public function getIdAttribute() {
        return $this->Dname;
    }

    public function getKeyName() {
        return 'Dname';
    }
}
