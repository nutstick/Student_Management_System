<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Teacher;


class Activity extends Model
{
  public $timestamps = false;

  public function aadvisor(){
    return $this->belongsTo(Teacher::class);
  }
}
