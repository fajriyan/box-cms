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
                <th class="py-2 px-2.5 border-b text-left">Booking Date</th>
                <th class="py-2 px-2.5 border-b text-left">status</th>
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