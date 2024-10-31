<?php

namespace App\Livewire\Pages;

use App\Models\Booking;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Livewire\Component;
use Illuminate\Support\Str;

class BookingApply extends Component
{
    public $slug;
    public $item;

    public $name;
    public $email;
    public $location;
    public $start_booking;
    public $end_booking;
    public $pricePackage;
    public $packageName;
    public $packageId;
    public $otherInfo;
    public $uniqueId;

    protected $rules = [
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'location' => 'required|string|max:255',
        'pricePackage' => 'required|string|min:0',
        'start_booking' => 'required|date',
        'end_booking' => 'required|date',
        'packageName' => 'required|string|max:255',
        'packageId' => 'required|string|max:50',
        'otherInfo' => 'nullable|string',
    ];

    public function mount($slug)
    {
        $this->slug = $slug;

        $priceData = json_decode(DB::table('entries')
            ->where('slug', 'booking')
            ->first('data')->data)->pricing_grid;
        $selectedData = collect($priceData)->firstWhere('id', $this->slug);

        $this->packageName = $selectedData->title ?? "-";
        $this->packageId = $selectedData->id ?? "-";
        $this->pricePackage = $selectedData->price ?? "-";
        $this->item = $selectedData;
        $this->start_booking = Carbon::now()->format('Y-m-d\TH:i');

        // Kondisi default durasi tergantung paket yang dipilih
        $this->end_booking = Carbon::parse($this->start_booking)
            ->addHours($this->packageName == "Paket Gold" ? 1 : 2)
            ->format('Y-m-d\TH:i');

        do {
            $uniqueId = 'BOOK' . Str::upper(Str::random(8));
        } while (Booking::where('unique_id', $uniqueId)->exists());
        $this->uniqueId = $uniqueId;
    }

    public function render()
    {
        $data = (object) [
            'id' => 'John Doe',
            'email' => 'john@example.com'
        ];
        return view('livewire.pages.booking-apply', [
            'price' => $this->item,
            'datas' => $data
        ]);
    }

    public function submit()
    {
        Booking::insert([
            'unique_id' => $this->uniqueId,
            'name' => $this->name,
            'email' => $this->email,
            'location' => $this->location,
            'notes' => $this->otherInfo,
            'start_booking' => $this->start_booking,
            'end_booking' => $this->end_booking,
            'id_package' => $this->packageId,
            'name_package' => $this->packageName,
            'price' => str_replace(["Rp ", "."], "", $this->pricePackage ?? "-"),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        session()->flash('success', "Pesanan Berhasil, Tunggu Whatsapp dari Kami.");
        $this->resetExcept(["uniqueId", "item"]);
    }

    public function downloadPdf()
    {
        $findData = Booking::where('unique_id', $this->uniqueId)->first();

        $pdf = Pdf::loadView('pdf.data', ['data' => $findData]);
        return response()->streamDownload(function () use ($pdf) {
            echo $pdf->output();
        }, rand(100, 90000) . '.pdf');
    }
}
