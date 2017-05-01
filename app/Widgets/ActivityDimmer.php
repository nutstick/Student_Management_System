<?php

namespace App\Widgets;

use App\Activity;
use Arrilot\Widgets\AbstractWidget;
use TCG\Voyager\Facades\Voyager;

class ActivityDimmer extends AbstractWidget
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
        $count = Activity::count();
        $string = $count == 1 ? 'activity' : 'activities';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-group',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} {$string} in your database. Click on button below to view all activities.",
            'button' => [
                'text' => 'View all activities',
                'link' => route('voyager.activities.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/03.png'),
        ]));
    }
}
