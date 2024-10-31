<?php

namespace App\Livewire\Pages;

use Livewire\Component;
use Statamic\Eloquent\Entries\Entry;

class Career extends Component
{
    public function render()
    {
        $page = Entry::query()->where('slug', 'karir')->first();

        $career = Entry::query()
            ->where('collection', 'career')
            // ->when($this->search_pekerjaan, function ($query) {
            //     return $query->where('title', 'like', '%' . $this->search_pekerjaan . '%');
            // })
            // ->when(
            //     $this->jenis_pekerjaan_props !== 'semua',
            //     function ($query) {
            //         $query->whereJsonContains('jenis_pekerjaan_tag', $this->jenis_pekerjaan_props);
            //     }
            // )
            // ->when(
            //     $this->lokasi_pekerjaan_props !== 'semua',
            //     function ($query) {
            //         $query->whereJsonContains('lokasi_pekerjaan_tag', $this->lokasi_pekerjaan_props);
            //     }
            // )
            ->where('published', true)
            ->paginate(9);

        // dump($career);
        return view('livewire.pages.career', ["page" => $page, "career" => $career]);
    }
}
