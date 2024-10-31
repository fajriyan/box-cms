<?php

namespace App\Livewire\Pages\Admin\Booking;

use App\Models\Booking;
use Livewire\Component;
use Livewire\WithPagination;

class Show extends Component
{
    use WithPagination;
    protected $paginationTheme = 'tailwind';
    public $search;
    public $catSearch;

    public function mount()
    {
        $this->catSearch = 'name';
    }
    public function render()
    {
        $data = Booking::where($this->catSearch, 'like', '%' . $this->search . '%')->paginate(5);
        return view('livewire.pages.admin.booking.show', ['data' => $data]);
    }

}
