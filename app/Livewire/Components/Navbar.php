<?php

namespace App\Livewire\Components;

use Illuminate\Support\Facades\DB;
use Livewire\Component;

class Navbar extends Component
{
    public function render()
    {
        $dynamic = DB::table('global_set_variables')->where('handle', 'navbar')->first('data');
        return view('livewire.components.navbar', ['dynamic' => json_decode($dynamic->data)]);
    }
}
