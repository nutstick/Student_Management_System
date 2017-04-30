<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use App\User;


class Competition extends Model
{
  public $timestamps = false;

  public function Cadvisor(){
    return $this->belongsTo(Teacher::class, 'id');
  }
}
