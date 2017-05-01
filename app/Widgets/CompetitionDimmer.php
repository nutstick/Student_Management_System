<?php

namespace App\Widgets;

use App\Competition;
use Arrilot\Widgets\AbstractWidget;
use TCG\Voyager\Facades\Voyager;

class CompetitionDimmer extends AbstractWidget
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
        $count = Competition::count();
        $string = $count == 1 ? 'competition' : 'competitions';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-group',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} {$string} in your database. Click on button below to view all competitions.",
            'button' => [
                'text' => 'View all competitions',
                'link' => route('voyager.competitions.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/01.png'),
        ]));
    }
}
