<div>
    @if (session()->has('success'))
    <div class="bg-green-500 text-white p-4 rounded mb-5">
        {{ session('success') }}
    </div>
    @endif
</div>