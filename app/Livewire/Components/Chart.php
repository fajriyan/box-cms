<?php

namespace App\Livewire\Components;

use App\Models\Booking;
use Flowframe\Trend\Trend;
use Livewire\Component;

class Chart extends Component
{
    public function render()
    {
        // $trends = Trend::model(Booking::class)
        //     ->between(
        //         start: now()->subDays(14),
        //         end: now()
        //     )
        //     ->perDay()
        //     ->count();

        // dummy data (delete this)
        $trends = collect();
        for ($i = 13; $i >= 0; $i--) {
            $trends->push((object) [
                'date' => now()->subDays($i)->toDateString(),
                'aggregate' => rand(5, 20), // bisa diubah sesuai pola yang diinginkan
            ]);
        }
        return view('livewire.components.chart', compact('trends'));
    }
}
