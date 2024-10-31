<?php

namespace App\Livewire\Components;

use Livewire\Component;

class PricingCalculator extends Component
{
    public $serviceType = '';
    public $duration = 0;
    public $location = '';
    public $additionalServices = [
        'editing' => false,
        'album' => false,
        'drone' => false,
    ];
    public $totalPrice = 0;

    protected $listeners = ['updateTotalPrice'];

    public function updateTotalPrice()
    {
        $this->calculatePrice();
    }

    public function calculatePrice()
    {
        $basePrice = 0;

        switch ($this->serviceType) {
            case 'wedding':
                $basePrice = 1200000;
                break;
            case 'portrait':
                $basePrice = 800000;
                break;
            case 'event':
                $basePrice = 1000000;
                break;
            case 'commercial':
                $basePrice = 1500000;
                break;
            default:
                $basePrice = 0;
                break;
        }

        $basePrice += $this->duration * 150000; // Rp 150.000 per jam

        if ($this->location == 'outdoor') {
            $basePrice += 200000; // Rp 200.000 tambahan untuk lokasi outdoor
        } elseif ($this->location == 'indoor') {
            $basePrice += 100000; // Rp 100.000 tambahan untuk lokasi indoor
        }

        // Tambahkan harga untuk layanan tambahan
        foreach ($this->additionalServices as $service => $selected) {
            if ($selected) {
                switch ($service) {
                    case 'editing':
                        $basePrice += 250000; // Rp 250.000 untuk editing
                        break;
                    case 'album':
                        $basePrice += 350000; // Rp 350.000 untuk album
                        break;
                    case 'drone':
                        $basePrice += 500000; // Rp 500.000 untuk drone footage
                        break;
                }
            }
        }

        $this->totalPrice = $basePrice;
    }
    public function render()
    {

        return view('livewire.components.pricing-calculator');
    }
}
