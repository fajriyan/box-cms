<div class="container mx-auto">

    <x-slot name="title">
        Cek Booking Layanan
    </x-slot>

    <div class="mt-[100px]">
        <form class="max-w-md mx-auto" wire:submit='checkIDBooking'>
            <label for="default-search"
                class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
            <div class="relative">
                <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                    </svg>
                </div>
                <input wire:model='idBooking' type="text" id="default-search"
                    class="block w-full p-4 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 @error('idBooking') border-red-600 animate-shake @enderror"
                    placeholder="Masukkan id Booking" />

                <button type="submit"
                    class="text-white absolute end-2.5 bottom-2.5 bg-slate-700 hover:bg-slate-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2">
                    Cari Kode Booking
                </button>
            </div>
            @error('idBooking') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
        </form>
    </div>

    <div class="flex justify-center mt-10">
        @if ($found === true)
        <div class=" w-[500px] border border-slate-600 rounded-md p-4">
            <div class="py-4 border-b border-slate-600">
                <b>Nama : </b>{{ $data->name ?? "Fajriyan" }}
            </div>
            <div class="py-4 border-b border-slate-600">
                <b>Email : </b>{{ $data->email ?? "Fajriyan" }}
            </div>
            <div class="py-4 border-b border-slate-600">
                <b>Alamat : </b>{{ $data->location ?? "Fajriyan" }}
            </div>
            <div class="py-4 border-b border-slate-600 flex gap-3 items-center">
                <b>Status : </b> <span
                    class=" 
                {{ $data->status == 'reject' ? 'bg-red-500 text-white capitalize px-1.5 py-1.5 rounded-md w-[65px] text-center text-xs block' : '' }}
                {{ $data->status == 'approve' ? 'bg-green-500 text-white capitalize px-1.5 py-1.5 rounded-md w-[65px] text-center text-xs block' : '' }}
                {{ $data->status == 'pending' ? 'bg-yellow-500 text-white capitalize px-1.5 py-1.5 rounded-md w-[65px] text-center text-xs block' : '' }}">
                    {{$data->status ?? "Fajriyan" }}
                </span>
            </div>
            <div class="py-4 ">
                <b>Keterangan Paket : </b>{{ $data->name_package ?? "Fajriyan" }} #<a href="/booking"
                    class="hover:text-blue-600 underline uppercase">{{ $data->id_package ??
                    "Fav5sd7" }}</a>
            </div>
        </div>
        @elseif ($found === false)
        <div class="">Data yang anda cari tidak ditemukan</div>
        @endif
    </div>



</div>