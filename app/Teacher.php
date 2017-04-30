<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;


class Teacher extends Model
{
  public $timestamps = false;

  // public function user() {
  //   return $this->belongsTo(Users::class, 'id');
  // }
}
