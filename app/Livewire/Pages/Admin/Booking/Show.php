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
    public $pagination;
    public $catSearch;
    public $sortField = 'start_booking'; // Default sorting field
    public $sortDirection = 'desc';

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function mount()
    {
        $this->catSearch = 'name';
        $this->pagination = 10;
    }
    public function sortBy($field)
    {
        if ($this->sortField === $field) {
            $this->sortDirection = $this->sortDirection === 'asc' ? 'desc' : 'asc';
        } else {
            $this->sortDirection = 'asc';
        }
        $this->sortField = $field;
    }
    public function render()
    {
        $data = Booking::where($this->catSearch, 'like', '%' . $this->search . '%')
                        ->orderBy($this->sortField, $this->sortDirection)
                        ->paginate($this->pagination);

        return view('livewire.pages.admin.booking.show', ['data' => $data]);
    }

}
