<div>
    <div class="mb-3 flex gap-3">
        <select class="bg-white rounded-md px-3 min-w-[100px]" wire:model.live='pagination'>
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="20">20</option>
        </select>
        <select class="bg-white rounded-md px-3 min-w-[100px]" wire:model.live='catSearch'>
            <option value="name">Name</option>
            <option value="email">Email</option>
        </select>
        <div class="relative w-[300px]">
            <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                <svg class="w-5 h-5 text-gray-500 dark:text-gray-400" aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M6 6h12M6 18h12m-5-8h5m-5 4h5M6 9v6l3.5-3L6 9Z" />
                </svg>
            </div>
            <input type="text" wire:model.live='search'
                class="bg-white border border-gray-600 text-gray-900 text-sm rounded-md focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Search by name" required />
        </div>

    </div>
    <table class="min-w-full bg-white border border-gray-200 rounded-md overflow-hidden">
        <thead>
            <tr class="bg-slate-600 text-white">
                <th class="py-2 px-2.5 border-b text-left">#</th>
                <th class="py-2 px-2.5 border-b text-left w-[155px]">Unique ID</th>
                <th class="py-2 px-2.5 border-b text-left">Name</th>
                <th class="py-2 px-2.5 border-b text-left">Email</th>
                <th class="py-2 px-2.5 border-b text-left">Package Name</th>
                <th class="py-2 px-2.5 w-[190px] border-b text-left cursor-pointer hover:bg-slate-500" wire:click="sortBy('start_booking')">
                    Booking Date
                    <i class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                        @if ($sortField === 'start_booking')
                            @if ($sortDirection === 'asc')
                                <path d="M3.5 12.5a.5.5 0 0 1-1 0V3.707L1.354 4.854a.5.5 0 1 1-.708-.708l2-1.999.007-.007a.5.5 0 0 1 .7.006l2 2a.5.5 0 1 1-.707.708L3.5 3.707zm3.5-9a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5M7.5 6a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1z"/>
                            @else
                                <path d="M3.5 2.5a.5.5 0 0 0-1 0v8.793l-1.146-1.147a.5.5 0 0 0-.708.708l2 1.999.007.007a.497.497 0 0 0 .7-.006l2-2a.5.5 0 0 0-.707-.708L3.5 11.293zm3.5 1a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5M7.5 6a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1z"/>
                            @endif
                        @else
                           
                            <path d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5"/>
                        @endif
                        </svg>
                    </i>
                </th>
                <th class="py-2 px-2.5 border-b text-left w-[100px] cursor-pointer hover:bg-slate-500" wire:click="sortBy('status')">
                    Status 
                    <i class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                    @if ($sortField === 'status')
                        @if ($sortDirection === 'asc')
                            <path d="M3.5 12.5a.5.5 0 0 1-1 0V3.707L1.354 4.854a.5.5 0 1 1-.708-.708l2-1.999.007-.007a.5.5 0 0 1 .7.006l2 2a.5.5 0 1 1-.707.708L3.5 3.707zm3.5-9a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5M7.5 6a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1z"/>
                        @else
                            <path d="M3.5 2.5a.5.5 0 0 0-1 0v8.793l-1.146-1.147a.5.5 0 0 0-.708.708l2 1.999.007.007a.497.497 0 0 0 .7-.006l2-2a.5.5 0 0 0-.707-.708L3.5 11.293zm3.5 1a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5M7.5 6a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1z"/>
                        @endif
                    @else
                       
                        <path d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5"/>
                    @endif
                    </svg>
                    </i>
                </th>
                <th class="py-2 px-2.5 border-b text-left">***</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($data as $item)
            <tr class="hover:bg-gray-100">
                <td class="py-2 px-2.5 border-b">{{ ($data->currentPage() - 1) *
                    $data->perPage() + $loop->iteration }}</td>
                <td class="py-2 px-2.5 border-b">{{ $item->unique_id }}</td>
                <td class="py-2 px-2.5 border-b">{{ $item->name }}</td>
                <td class="py-2 px-2.5 border-b">{{ $item->email }}</td>
                <td class="py-2 px-2.5 border-b">{{ $item->name_package }}</td>
                <td class="py-2 px-2.5 border-b">{{ \Carbon\Carbon::parse($item->start_booking)->format('d M Y | H:i')
                    }}
                </td>
                <td class="py-2 px-2.5 border-b">
                    <span
                        class=" 
                     {{ $item->status == 'reject' ? 'bg-red-500 text-white capitalize px-1.5 py-1 rounded-md w-[65px] text-center text-xs block' : '' }}
                     {{ $item->status == 'approve' ? 'bg-green-500 text-white capitalize px-1.5 py-1 rounded-md w-[65px] text-center text-xs block' : '' }}
                     {{ $item->status == 'pending' ? 'bg-yellow-500 text-white capitalize px-1.5 py-1 rounded-md w-[65px] text-center text-xs block' : '' }}">
                        {{ $item->status }}
                    </span>
                </td>
                <td class="py-2 px-2.5 border-b flex gap-2 items-center">
                    <a href="/admin/booking/{{ $item->id }}"
                        class="bg-blue-700 hover:!bg-blue-900 px-2 py-0.5 rounded-md text-white">
                        <svg class="w-6 h-6 text-white dark:text-white" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M20 12H8m12 0-4 4m4-4-4-4M9 4H7a3 3 0 0 0-3 3v10a3 3 0 0 0 3 3h2" />
                        </svg>
                    </a>
                </td>
            </tr>
            @empty
            <tr class="hover:bg-gray-100">
                <td class="">Data Kosong</td>
            </tr>
            @endforelse
        </tbody>
    </table>
    <div class="mt-5">
        {{ $data->links() }}
    </div>
</div>