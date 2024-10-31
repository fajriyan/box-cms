<?php

namespace App\Livewire\Pages;

use App\Models\Booking;
use Livewire\Attributes\Rule;
use Livewire\Component;

class BookingCheck extends Component
{
    #[Rule('required|min:5')]
    public $idBooking;
    public bool $found;
    public $data;
    public $lastSubmittedAt = 0;

    public function render()
    {
        return view('livewire.pages.booking-check',[ 'data'=> $this->data]);
    }
    public function checkIDBooking()
    {
        if (microtime(true) - $this->lastSubmittedAt < 1) {
            $this->addError('idBooking', 'Tunggu 1 detik sebelum mengirimkan lagi.');
            return;
        }

        $this->validate();

        $findData = Booking::where('unique_id', $this->idBooking)->first();
        if($findData){
            $this->found = true;
            $this->data = $findData;
        }else{
            $this->found= false;
        }

        $this->lastSubmittedAt = microtime(true);
    }
}
