<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Course extends Model
{
    protected $appends = ['id'];
    protected $casts = [
        'CID' => 'string',
    ];

    public $timestamps = false;

    public function getIdAttribute() {
        return $this->CID;
    }

    public function getKeyName() {
        return 'CID';
    }
}
