<?php

namespace App\Widgets;

use App\Student;
use Arrilot\Widgets\AbstractWidget;
use TCG\Voyager\Facades\Voyager;

class StudentDimmer extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Student::count();
        $string = $count == 1 ? 'student' : 'students';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-group',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} {$string} in your database. Click on button below to view all students.",
            'button' => [
                'text' => 'View all students',
                'link' => route('voyager.students.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.png'),
        ]));
    }
}
