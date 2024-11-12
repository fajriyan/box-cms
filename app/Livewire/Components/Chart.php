<?php

namespace App\Livewire\Components;

use App\Models\Booking;
use Flowframe\Trend\Trend;
use Livewire\Component;

class Chart extends Component
{
    public function render()
    {
        $trends = Trend::model(Booking::class)
            ->between(
            start: now()->subYears(),
            end: now()
            )
            ->perDay()
            ->count();
        return view('livewire.components.chart', compact('trends'));
    }
}
