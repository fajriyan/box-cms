<!-- Toastify CSS & JS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
<script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>

<h1>Manage Sitemaps</h1>
<h2>Filter by Collection</h2>
<select id="collection-filter">
   @foreach($collections as $col)
      <option value="{{ $col }}" {{ $col === $filterCollection ? 'selected' : '' }}>{{ $col }}</option>
   @endforeach
</select>

<table id="sitemap-table" border="1" cellpadding="5">
   <thead>
      <tr>
         <th>ID</th>
         <th>Collection</th>
         <th>URL</th>
         <th>Changefreq</th>
         <th>Priority</th>
         <th>Lastmod</th>
         <th>Active</th>
         <th>Actions</th>
      </tr>
   </thead>
   <tbody id="sitemap-body">
      @foreach($sitemaps as $item)
         <tr data-id="{{ $item->id }}">
            <td>{{ $item->id }}</td>
            <td contenteditable="true" class="editable" data-field="collection">{{ $item->collection }}</td>
            <td contenteditable="true" class="editable" data-field="url">{{ $item->url }}</td>
            <td contenteditable="true" class="editable" data-field="changefreq">{{ $item->changefreq }}</td>
            <td contenteditable="true" class="editable" data-field="priority">{{ $item->priority }}</td>
            <td contenteditable="true" class="editable" data-field="lastmod">{{ $item->lastmod?->format('Y-m-d') }}</td>
            <td>
               <input type="checkbox" class="toggle-active" {{ $item->is_active ? 'checked' : '' }}>
            </td>
            <td>
               <button class="delete-btn">Delete</button>
            </td>
         </tr>
      @endforeach
   </tbody>
</table>


<h2>Add New Sitemap</h2>
<form id="sitemap-form">
   <input type="text" name="collection" placeholder="Collection" required>
   <input type="text" name="url" placeholder="URL" required>
   <input type="text" name="changefreq" placeholder="Changefreq">
   <input type="number" step="0.1" min="0" max="1" name="priority" placeholder="Priority">
   <input type="date" name="lastmod" placeholder="Lastmod">
   <button type="submit">Add</button>
</form>

<script>
   // Notify helper
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

   // Filter per collection
   document.getElementById('collection-filter').addEventListener('change', async function () {
      let col = this.value;

      try {
         let res = await fetch(`/admin/sitemaps?collection=${col}`, {
            headers: { 'X-Requested-With': 'XMLHttpRequest' }
         });
         let html = await res.text();

         // Parse HTML tbody dari response
         let parser = new DOMParser();
         let doc = parser.parseFromString(html, 'text/html');
         let newTbody = doc.querySelector('#sitemap-body');
         document.querySelector('#sitemap-body').innerHTML = newTbody.innerHTML;

         notify(`Filtered by collection: ${col}`);

         bindTableEvents(); // rebind events
      } catch (err) {
         notify("Failed to filter collection", "error");
      }
   });

   // Bind semua event CRUD
   function bindTableEvents() {
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

   // Add new sitemap via AJAX
   document.getElementById('sitemap-form').addEventListener('submit', async function (e) {
      e.preventDefault();
      let form = e.target;
      let data = Object.fromEntries(new FormData(form).entries());

      try {
         let res = await fetch('{{ route('admin.sitemaps.store') }}', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
            body: JSON.stringify(data)
         });
         let json = await res.json();
         notify(`Added sitemap: ${json.collection} → ${json.url}`);
         location.reload(); // reload untuk menampilkan row baru
      } catch (err) {
         notify("Failed to add sitemap", "error");
      }
   });

   // Bind event pertama kali
   bindTableEvents();
</script>