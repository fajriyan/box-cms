<div>
    <div class="container mx-auto mt-[40px] mb-[100px]">
        <h1 class="text-xl font-semibold">Lamar Pekerjaan : {{ $jobName }}</h1>
        <div class="mt-5">
            <div>
                <form wire:submit.prevent="submit" class="space-y-4">
                    <div>
                        <label for="name" class="block">Nama Lengkap*</label>
                        <input type="text" id="name" wire:model="name" class="border p-2 w-full rounded-md">
                        @error('name') <span class="text-red-500">{{ $message }}</span> @enderror
                    </div>

                    <div>
                        <label for="email" class="block">Email Aktif*</label>
                        <input type="email" id="email" wire:model="email" class="border p-2 w-full rounded-md">
                        @error('email') <span class="text-red-500">{{ $message }}</span> @enderror
                    </div>

                    <div>
                        <label for="phone" class="block">Nomer Telepon*</label>
                        <input type="text" id="phone" wire:model="phone" class="border p-2 w-full rounded-md">
                        @error('phone') <span class="text-red-500">{{ $message }}</span> @enderror
                    </div>

                    <div>
                        <label for="link_linkedin" class="block">LinkedIn URL*</label>
                        <input type="url" id="link_linkedin" wire:model="link_linkedin"
                            class="border p-2 w-full rounded-md">
                        @error('link_linkedin') <span class="text-red-500">{{ $message }}</span> @enderror
                    </div>
                    <br>

                    <div class="border relative border-slate-500 rounded-md p-5">
                        <h3 class="absolute top-0 -mt-3 bg-white px-2"> Detail Pekerjaan</h3>
                        <div class="flex">
                            <div class="w-[80%] pr-10">
                                <div class="mb-3">
                                    <label for="">Nama Pekerjaan</label>
                                    <input type="text" class="w-full rounded-md" wire:model="jobName" readonly>
                                </div>

                                <div class=" mb-3">
                                    <label for="">Gaji Pekerjaan</label>
                                    <input type="text" class="w-full rounded-md" wire:model='jobSalary' readonly>
                                </div>
                                <div class=" mb-3">
                                    <label for="">Tanggal Apply</label>
                                    <input type="date" value="{{ now()->format('Y-m-d') }}" class="w-full rounded-md"
                                        readonly>

                                </div>
                            </div>
                            <div class="w-[30%]">
                                <div>
                                    <label for="job" class="block">Position</label>
                                    <select class="w-full rounded-md mb-3" wire:model='taxonomyPosition' disabled>
                                        @foreach ($taxPosition as $item)
                                        <option value="{{ $item->slug }}">{{
                                            json_decode($item->data)->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('job') <span class="text-red-500">{{ $message }}</span> @enderror
                                </div>
                                <div>
                                    <label for="job" class="block">Division</label>
                                    <select class="w-full rounded-md mb-3" wire:model='taxonomyDivision' disabled>
                                        @foreach ($taxDivision as $item)
                                        <option value="{{ $item->slug }}">{{ json_decode($item->data)->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('job') <span class="text-red-500">{{ $message }}</span> @enderror
                                </div>
                                <div>
                                    <label for="job" class="block">Role</label>
                                    <select class="w-full rounded-md mb-3" wire:model='taxonomyRole' disabled>
                                        @foreach ($taxRole as $item)
                                        <option value="{{ $item->slug }}">{{ json_decode($item->data)->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('job') <span class="text-red-500">{{ $message }}</span> @enderror
                                </div>
                                <div>
                                    <label for="job" class="block">Location</label>
                                    <select class="w-full rounded-md mb-3" wire:model='taxonomyLocation' disabled>
                                        @foreach ($taxLocaction as $item)
                                        <option value="{{ $item->slug }}">{{ json_decode($item->data)->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('job') <span class="text-red-500">{{ $message }}</span> @enderror
                                </div>
                            </div>
                        </div>


                    </div>

                    <button type="submit" class="bg-slate-700 hover:bg-slate-800 text-white py-2 px-5 rounded">Kirim
                        Pendaftaran</button>
                </form>
            </div>

        </div>

    </div>
</div>