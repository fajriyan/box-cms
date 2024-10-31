<div class="max-w-lg mx-auto p-6 bg-gray-900 min-h-[100%] text-white rounded-lg shadow-lg flex flex-col justify-between"
    id="printArea">
    <div class="">
        <h2 class="text-2xl font-bold mb-4">Kalkulator Harga Layanan </h2>

        <div class="mb-4">
            <label for="serviceType" class="block text-gray-400">Select Service Type:</label>
            <select id="serviceType" wire:model="serviceType" wire:change="updateTotalPrice"
                class="w-full p-2 bg-gray-800 border border-gray-700 rounded">
                <option value="">Pilih Layanan</option>
                <option value="wedding">Wedding</option>
                <option value="portrait">Portrait</option>
                <option value="event">Event</option>
                <option value="commercial">Commercial</option>
            </select>
        </div>

        <div class="mb-4">
            <label for="duration" class="block text-gray-400">Durasi (60 Menit):</label>
            <input type="number" id="duration" wire:model="duration" wire:change="updateTotalPrice"
                class="w-full p-2 bg-gray-800 border border-gray-700 rounded">
        </div>

        <div class="mb-4">
            <label for="location" class="block text-gray-400">Location:</label>
            <select id="location" wire:model="location" wire:change="updateTotalPrice"
                class="w-full p-2 bg-gray-800 border border-gray-700 rounded">
                <option value="">Pilih Lokasi</option>
                <option value="outdoor">Outdoor</option>
                <option value="indoor">Indoor</option>
            </select>
        </div>

        <h3 class="text-xl font-semibold mb-2">Additional Services:</h3>
        <div class="mb-4">
            <label class="flex items-center">
                <input type="checkbox" wire:model="additionalServices.editing" wire:change="updateTotalPrice"
                    class="mr-2 bg-gray-800 border-gray-700 focus:ring-0">
                Photo Editing (+Rp 250.000)
            </label>
            <label class="flex items-center">
                <input type="checkbox" wire:model="additionalServices.album" wire:change="updateTotalPrice"
                    class="mr-2 bg-gray-800 border-gray-700 focus:ring-0">
                Photo Album (+Rp 350.000)
            </label>
            @if($serviceType !== 'wedding')
            <label class="flex items-center">
                <input type="checkbox" wire:model="additionalServices.drone" wire:change="updateTotalPrice"
                    class="mr-2 bg-gray-800 border-gray-700 focus:ring-0">
                Drone Footage (+Rp 500.000)
            </label>
            @endif
        </div>
    </div>
    <p class="text-xl font-bold mt-4">Total Price: Rp {{ number_format($totalPrice, 0, ',', '.') }}</p>
    <button onclick="printDiv()"
        class="mt-4 px-4 py-2 bg-gray-800 text-white font-semibold rounded-lg hover:bg-gray-700 transition">
        Print
    </button>

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