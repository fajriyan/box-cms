<div>
    <div class="mb-5 flex justify-between">
        <a href="/admin/booking" class="flex items-center bg-slate-700 text-white px-2 rounded-md">
            <svg class="w-6 h-6 text-white dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                width="24" height="24" fill="none" viewBox="0 0 24 24">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="m17 16-4-4 4-4m-6 8-4-4 4-4" />
            </svg>
            Back
        </a>
        <div class="flex gap-3 items-center">
            <div class="">
                #{{ $unique_id }}
            </div>
            <div
                class=" 
            {{ $status == 'reject' ? 'bg-red-500 text-white capitalize px-1.5 py-1.5 rounded-md w-[65px] text-center text-xs block' : '' }}
            {{ $status == 'approve' ? 'bg-green-500 text-white capitalize px-1.5 py-1.5 rounded-md w-[65px] text-center text-xs block' : '' }}
            {{ $status == 'pending' ? 'bg-yellow-500 text-white capitalize px-1.5 py-1.5 rounded-md w-[65px] text-center text-xs block' : '' }}">
                {{ $status }}
            </div>
            <button class="bg-red-700 hover:bg-red-900 px-3 py-0.5 rounded-md text-white"
                wire:click='delete({{ $id }})'>Delete</button>
        </div>
    </div>
    <div class="p-6 bg-white rounded-lg border border-slate-300">
        <form wire:submit="save">
            <div class="grid grid-cols-2 gap-4">
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
            </div>

            <div class="mb-7">
                <label for="location" class="block text-sm font-medium text-gray-700">Lokasi</label>
                <input type="text" id="location" wire:model="location"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan lokasi acara">
                @error('location') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="mb-4">
                <div class="grid grid-cols-2 gap-3 border p-3 rounded-md relative">
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

            <div class="!mb-10">
                <label for="otherInfo" class="block text-sm font-medium text-gray-700">Keterangan Lain</label>
                <textarea id="otherInfo" wire:model="otherInfo"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Masukkan keterangan tambahan"></textarea>
                @error('otherInfo') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <h3 class="font-semibold mb-2">Detail Paket</h3>
            <div class="grid grid-cols-3 gap-3">
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
            </div>

            <div class="flex gap-3 mt-10">
                <button type="submit"
                    class=" px-6 py-2 !bg-green-600 text-white rounded-md hover:!bg-slate-700 focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 font-semibold">
                    Save
                </button>
                <div class="flex gap-3 border-l pl-3 border-slate-600">
                    <button type="button" wire:click='changeStatus({{ $id }}, "approve")'
                        class=" px-6 py-2 !bg-green-600 text-white rounded-md hover:!bg-slate-700 focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 font-semibold">
                        Approve
                    </button>
                    <button type="button" wire:click='changeStatus({{ $id }}, "reject")'
                        class=" px-6 py-2 !bg-red-700 text-white rounded-md hover:!bg-slate-700 focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 font-semibold">
                        Reject
                    </button>
                    <button type="button" wire:click='changeStatus({{ $id }}, "pending")'
                        class=" px-6 py-2 !bg-yellow-500 text-white rounded-md hover:!bg-slate-700 focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 font-semibold">
                        Pending
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>