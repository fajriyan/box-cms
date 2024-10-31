<?php

namespace App\Livewire\Pages\Admin\Booking;

use App\Models\Booking;
use Livewire\Component;

class Form extends Component
{
    public $id;
    public $unique_id;
    public $name;
    public $email;
    public $location;
    public $start_booking;
    public $end_booking;
    public $pricePackage;
    public $packageName;
    public $packageId;
    public $otherInfo;
    public $status;


    public function mount()
    {
        $selectedData = Booking::where('id', $this->id)->first();
        ;

        $this->unique_id = $selectedData->unique_id;
        $this->name = $selectedData->name;
        $this->email = $selectedData->email;
        $this->location = $selectedData->location;
        $this->otherInfo = $selectedData->notes;
        $this->packageName = $selectedData->name_package ?? "-";
        $this->packageId = $selectedData->id_package ?? "-";
        $this->pricePackage = $selectedData->price ?? "-";
        $this->start_booking = $selectedData->start_booking;
        $this->end_booking = $selectedData->end_booking;
        $this->start_booking = $selectedData->start_booking;
        $this->status = $selectedData->status;
    }

    public function render()
    {
        return view('livewire.pages.admin.booking.form');
    }

    public function delete($id)
    {
        Booking::destroy($id);
        return $this->redirectRoute('admin.booking');
    }
    public function changeStatus($id, $status)
    {
        Booking::where('id', $id)->update([
            'status' => $status
        ]);
        redirect('/admin/booking/' . $this->id);
    }

    public function save()
    {
        dd("saved");
    }

}