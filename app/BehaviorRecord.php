<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BehaviorRecord extends Model
{
    public function SID()
    {
        return $this->belongsTo('App\Students', 'SID', 'SID');
    }
}
