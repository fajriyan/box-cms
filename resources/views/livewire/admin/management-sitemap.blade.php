<div>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>

    <div class="flex justify-between">
        <select class="rounded-md px-3 py-1 min-w-[200px]" id="collection-filter">
            @foreach($collections as $col)
                <option value="{{ $col }}" {{ $col === $filterCollection ? 'selected' : '' }} class="">{{ $col }}</option>
            @endforeach
        </select>

        <a href="{{ route('admin.generate.sitemap') }}"
            class="bg-yellow-700 hover:bg-yellow-800 text-white px-3 py-1 rounded block w-max">
            Generate Sitemap
        </a>
    </div>


    <table id="sitemap-table" class="mt-6 w-full border border-slate-200 shadow-sm rounded-lg overflow-hidden">
        <thead class="bg-slate-100 text-left text-sm font-semibold text-slate-700">
            <tr>
                <th class="px-4 py-3">ID</th>
                <th class="px-4 py-3">Collection</th>
                <th class="px-4 py-3">URL</th>
                <th class="px-4 py-3">Changefreq</th>
                <th class="px-4 py-3">Priority</th>
                <th class="px-4 py-3">Lastmod</th>
                <th class="px-4 py-3">Active</th>
                <th class="px-4 py-3 hidden">Actions</th>
            </tr>
        </thead>
        <tbody id="sitemap-body" class="divide-y divide-slate-200 text-sm">
            @foreach($sitemaps as $item)
                <tr data-id="{{ $item->id }}" class="hover:bg-slate-50">
                    <td class="px-2 py-1 text-slate-600 text-center">{{ $item->id }}</td>
                    <td class="px-2 py-1" data-field="collection">{{ $item->collection }}
                    </td>
                    <td class="px-2 py-1 editable" contenteditable="true" data-field="url">{{ $item->url }}</td>
                    <td class="px-2 py-1" data-field="changefreq">{{ $item->changefreq }}
                    </td>
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
                            <span
                                class="absolute left-1 top-1 w-4 h-4 bg-white rounded-full transition peer-checked:!translate-x-5"></span>
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
        </tbody>
    </table>


    <script>
        document.addEventListener('DOMContentLoaded', function () {
            function notify(message, type = "success") {
                Toastify({
                    text: message,
                    duration: 3000,
                    gravity: "top",
                    position: "right",
                    backgroundColor: type === "success" ? "green" : "red",
                    stopOnFocus: true
                }).showToast();
            }

            document.getElementById('collection-filter').addEventListener('change', async function () {
                let col = this.value;

                try {
                    let res = await fetch(`/admin/sitemaps?collection=${col}`, {
                        headers: { 'X-Requested-With': 'XMLHttpRequest' }
                    });
                    let html = await res.text();

                    // Replace hanya tbody, styling tetap
                    document.querySelector('#sitemap-body').innerHTML = html;

                    notify(`Filtered by collection: ${col}`);
                    bindTableEvents(); // re-bind events
                } catch (err) {
                    notify("Failed to filter collection", "error");
                }
            });


            // Bind semua event CRUD
            function bindTableEvents() {
                // Inline edit
                document.querySelectorAll('.editable').forEach(td => {
                    td.addEventListener('blur', async function () {
                        let tr = td.closest('tr');
                        let id = tr.dataset.id;
                        let field = td.dataset.field;
                        let value = td.innerText;
                        let collection = tr.querySelector('[data-field="collection"]').innerText;
                        let url = tr.querySelector('[data-field="url"]').innerText;

                        try {
                            await fetch(`/admin/sitemaps/${id}`, {
                                method: 'PUT',
                                headers: { 'Content-Type': 'application/json', 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
                                body: JSON.stringify({ [field]: value })
                            });
                            notify(`Updated "${field}" for sitemap: ${collection} → ${url}`);
                        } catch (err) {
                            notify(`Failed to update "${field}" for sitemap: ${collection} → ${url}`, "error");
                        }
                    });
                });

                // Delete
                document.querySelectorAll('.delete-btn').forEach(btn => {
                    btn.addEventListener('click', async function () {
                        let tr = btn.closest('tr');
                        let id = tr.dataset.id;
                        let collection = tr.querySelector('[data-field="collection"]').innerText;
                        let url = tr.querySelector('[data-field="url"]').innerText;

                        if (!confirm(`Delete sitemap "${collection}" → "${url}"?`)) return;

                        try {
                            await fetch(`/admin/sitemaps/${id}`, {
                                method: 'DELETE',
                                headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' }
                            });
                            tr.remove();
                            notify(`Deleted sitemap: ${collection} → ${url}`);
                        } catch (err) {
                            notify(`Failed to delete sitemap: ${collection} → ${url}`, "error");
                        }
                    });
                });

                // Toggle active
                document.querySelectorAll('.toggle-active').forEach(cb => {
                    cb.addEventListener('change', async function () {
                        let tr = cb.closest('tr');
                        let id = tr.dataset.id;
                        let collection = tr.querySelector('[data-field="collection"]').innerText;
                        let url = tr.querySelector('[data-field="url"]').innerText;

                        try {
                            let res = await fetch(`/admin/sitemaps/toggle/${id}`, {
                                method: 'POST',
                                headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' }
                            });
                            let json = await res.json();
                            notify(`Sitemap "${collection}" → "${url}" ${json.is_active ? "activated" : "deactivated"}`);
                        } catch (err) {
                            notify(`Failed to update sitemap: ${collection} → ${url}`, "error");
                        }
                    });
                });
            }

            bindTableEvents();
        })
    </script>
</div>