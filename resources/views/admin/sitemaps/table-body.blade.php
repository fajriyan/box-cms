@foreach($sitemaps as $item)
   <tr data-id="{{ $item->id }}" class="hover:bg-slate-50">
      <td class="px-2 py-1 text-slate-600 text-center">{{ $item->id }}</td>
      <td class="px-2 py-1" data-field="collection">{{ $item->collection }}</td>
      <td class="px-2 py-1 editable" contenteditable="true" data-field="url">{{ $item->url }}</td>
      <td class="px-2 py-1" data-field="changefreq">{{ $item->changefreq }}</td>
      <td class="px-2 py-1 editable" contenteditable="true" data-field="priority">{{ $item->priority }}</td>
      <td class="px-2 py-1" data-field="lastmod">
         {{ $item->lastmod?->format('Y-m-d') }}
      </td>
      <td class="px-2 py-1">
         <!-- Toggle Switch -->
         <label class="relative inline-flex items-center cursor-pointer">
            <input type="checkbox" class="sr-only peer toggle-active" {{ $item->is_active ? 'checked' : '' }}>
            <div
               class="w-11 h-6 bg-slate-300 peer-focus:outline-none peer-focus:ring-2 peer-focus:ring-blue-400 rounded-full peer peer-checked:bg-blue-600 transition">
            </div>
            <span class="absolute left-1 top-1 w-4 h-4 bg-white rounded-full transition peer-checked:!translate-x-5"></span>
         </label>
      </td>
      <td class="px-2 py-1 hidden">
         <form action="{{ route('admin.sitemaps.destroy', $item->id) }}" method="POST"
            onsubmit="return confirm('Yakin hapus sitemap ini?')">
            @csrf
            @method('DELETE')
            <button type="submit" class="px-3 py-1 rounded bg-red-500 text-white hover:bg-red-600 text-xs">
               Delete
            </button>
         </form>
      </td>
   </tr>
@endforeach