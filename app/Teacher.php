<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;


class Teacher extends Model
{
  protected $appends = ['fullname'];

  public $timestamps = false;

  public function getFullnameAttribute() {
    $user = call_user_func([User::where('id', '=', $this->Cadvisor)->select('fname', 'lname'), 'get']);
    return $user[0]['fname'].' '.$user[0]['lname'];
  }
}
