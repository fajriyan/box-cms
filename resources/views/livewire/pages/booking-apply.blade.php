<div class="pt-[40px] pb-[60px] container mx-auto">
    <x-slot name="title">
        Pesan {{ $price->title }}
    </x-slot>

    @if (session()->has('success'))
    <div id="printArea">
        <div class="bg-green-500 text-white p-4 rounded mb-5">
            {{ session('success') }}
        </div>
    </div>
    <button wire:click='downloadPdf' class="mt-2 p-2 bg-blue-500 text-white rounded">Download pdf sekarang</button>
    @else
    @if ($price)
    <div class="max-w-max mx-auto p-6 bg-white rounded-lg border border-slate-300">
        <h2 class="text-2xl font-bold mb-6">Formulir Pemesanan Paket <span class="font-light text-lg">[#{{ $uniqueId
                }}]</span>
        </h2>
        <form wire:submit="submit">
            <div class="mb-4">
                <label for="name" class="block text-sm font-medium text-gray-700">Nama</label>
                <input type="text" id="name" wire:model="name"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan nama Anda">
                @error('name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="mb-4">
                <label for="name" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="text" id="name" wire:model="email"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan nama Anda">
                @error('email') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="mb-7">
                <label for="location" class="block text-sm font-medium text-gray-700">Lokasi</label>
                <input type="text" id="location" wire:model="location"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan lokasi acara">
                @error('location') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="mb-4">
                <div class="flex gap-3 border p-3 rounded-md relative">
                    <label class="block text-sm font-medium text-gray-700 absolute bg-white px-2 -mt-[23px]">Waktu
                        Booking</label>
                    <div class="">
                        <label class="block text-sm font-medium text-gray-700">Mulai</label>
                        <input type="datetime-local" wire:model="start_booking"
                            class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500">
                        @error('start_booking') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="">
                        <label class="block text-sm font-medium text-gray-700">Berakhir</label>
                        <input type="datetime-local" wire:model="end_booking"
                            class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500">
                        @error('end_booking') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                </div>
            </div>

            <div class="mb-6">
                <label for="otherInfo" class="block text-sm font-medium text-gray-700">Keterangan Lain</label>
                <textarea id="otherInfo" wire:model="otherInfo"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan keterangan tambahan"></textarea>
                @error('otherInfo') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <h3 class="font-semibold mb-2">Detail Paket</h3>
            <div class="mb-4">
                <label for="packageId" class="block text-sm font-medium text-gray-700">ID Paket</label>
                <input type="text" id="packageId" wire:model="packageId"
                    class="mt-1 block w-full px-2 py-1 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan ID paket" readonly>
                @error('packageId') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="mb-4">
                <label for="price" class="block text-sm font-medium text-gray-700">Harga</label>
                <input type="text" id="price" wire:model="pricePackage"
                    class="mt-1 block w-full px-2 py-1 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan harga" readonly>
                @error('pricePackage') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="mb-4">
                <label for="packageName" class="block text-sm font-medium text-gray-700">Nama Paket</label>
                <input type="text" id="packageName" wire:model="packageName"
                    class="mt-1 block w-full px-2 py-1 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan nama paket" readonly>
                @error('packageName') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="flex justify-end">
                <button type="submit"
                    class="px-6 py-2 bg-slate-600 text-white rounded-md hover:bg-slate-700 focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 font-semibold">Pesan
                    Paket</button>
            </div>
        </form>
    </div>
    @else
    <section class="bg-white dark:bg-gray-900">
        <div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
            <div class="mx-auto max-w-screen-sm text-center">
                <h1
                    class="mb-4 text-7xl tracking-tight font-extrabold lg:text-9xl text-primary-600 dark:text-primary-500">
                    404</h1>
                <p class="mb-4 text-3xl tracking-tight font-bold text-gray-900 md:text-4xl dark:text-white">Something's
                    missing.</p>
                <p class="mb-4 text-lg font-light text-gray-500 dark:text-gray-400">Sorry, we can't find that page.
                    You'll find lots to explore on the home page. </p>
                <a href="#"
                    class="inline-flex text-white bg-primary-600 hover:bg-primary-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:focus:ring-primary-900 my-4">Back
                    to Homepage</a>
            </div>
        </div>
    </section>
    @endif
    @endif
</div>
<script>
    function printDiv() {
        var printContents = document.getElementById("printArea").innerHTML;
        var originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>