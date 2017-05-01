<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Teacher;


class Activity extends Model
{
  protected $appends = ['Advisor'];

  public $timestamps = false;

  public function getAdvisorAttribute() {
    $user = call_user_func([Teacher::where('id', '=', $this->Cadvisor), 'get']);
    $user = call_user_func([User::where('id', '=', $user[0]->user)->select('fname', 'lname'), 'get']);
    return $user[0]['fname'].' '.$user[0]['lname'];
  }

  public function aadvisor() {
    return $this->belongsTo(User::class);
  }
}
