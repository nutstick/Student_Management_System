<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use App\Course;

class Section extends Model
{
    protected $appends = ['id'];

    public $timestamps = false;

    public function cID() {
      return $this->belongsTo(Course::class);
    }
}
