<div class="mt-6 border bg-white">
   <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
   <div class="h-[300px]">
      <canvas id="cartChart"></canvas>
   </div>
   <div class="text-xs block static p-3">
      <span>
         last updated on : {{ Date("l, d M Y - h:i")}}
      </span>
      <button id="reloadBtn" class="bg-red-200 hover:bg-red-300 px-2">Click to Fetch</button>
      <script>
         document.addEventListener("DOMContentLoaded", function () { function reloadPage() { location.reload(); } document.getElementById("reloadBtn").addEventListener("click", reloadPage); });
      </script>
   </div>

   <script>
      document.addEventListener("DOMContentLoaded", function () {
         const ctx = document.getElementById("cartChart").getContext("2d");
         new Chart(ctx, {
            type: "line",
            data: {
               labels: @json($trends->map(fn($trend) => Carbon\Carbon::parse($trend->date)->isoFormat('D MMM'))),
               datasets: [
                  {
                     label: 'Pengguna',
                     data: @json($trends->map(fn($trend) => $trend->aggregate)),
                     borderColor: 'rgba(75, 192, 192, 1)', // Warna garis
                     fill: true,
                     backgroundColor: 'rgba(75, 192, 192, 0.3)', // Warna background area bawah garis
                     tension: 0.3, // Kelenturan garis
                     borderWidth: 1
                  },
               ]
            },
            options: {
               responsive: true,
               maintainAspectRatio: false,
               scales: {
                  y: {
                     beginAtZero: true,
                  }
               }
            }
         });
      });
   </script>
</div>






{{-- 
const chartData = {
labels: @json($trends->map(fn($trend) => Carbon\Carbon::parse($trend->date)->isoFormat('D MMM'))),
datasets: [{
label: 'Pengguna',
data: @json($trends->map(fn($trend) => $trend->aggregate)),
borderColor: 'rgba(75, 192, 192, 1)', // Warna garis
fill: true,
backgroundColor: 'rgba(75, 192, 192, 0.3)', // Warna background area bawah garis
tension: 0.3, // Kelenturan garis
borderWidth: 1
},
]
}; --}}