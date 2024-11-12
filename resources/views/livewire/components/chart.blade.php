<div>
    <div class="">
        <canvas id="userTrendChart" width="400" height="300" class=""></canvas>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            const ctx = document.getElementById('userTrendChart').getContext('2d');
        
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
            };
        
            new Chart(ctx, {
              type: 'line',
              data: chartData,
              options: {
                 responsive: false,
                 scales: {
                       y: {
                          beginAtZero: true,
                          suggestedMax: Math.max(...chartData.datasets[0].data) * 1.3
                       }
                 },
                 elements: {
                    line: {
                       tension: 0.4, // Menambahkan kelenturan pada garis
                       borderCapStyle: 'round', // Membuat ujung garis rounded
                       borderJoinStyle: 'round', // Membuat sambungan garis rounded
                       borderWidth: 4, // Lebar garis
                       borderColor: 'rgba(54, 162, 235, 1)', // Warna garis
                    }
                 },
              }
           });
        </script>
    </div>
</div>
