<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use App\User;
use App\Teacher;

class Competition extends Model
{
  protected $appends = ['Advisor'];

  public $timestamps = false;

  public function getAdvisorAttribute() {
    $user = call_user_func([User::where('id', '=', $this->Cadvisor)->select('fname', 'lname'), 'get']);
    return $user[0]['fname'].' '.$user[0]['lname'];
  }

  public function cadvisor() {
    return $this->belongsTo(User::class);
  }
}
