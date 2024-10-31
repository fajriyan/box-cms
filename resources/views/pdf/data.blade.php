<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Document</title>
   <style>
      body {
         font-family: Arial, sans-serif;
         background-color: #f4f4f4;
         /* Latar belakang abu-abu terang */
         margin: 0;
         padding: 20px;
      }

      h1 {
         font-size: 28px;
         color: #333;
         /* Warna teks gelap */
         text-align: center;
         margin-bottom: 20px;
      }

      table {
         width: 100%;
         border-collapse: collapse;
         margin: 0 auto;
         /* Pusatkan tabel */
         box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
         /* Bayangan untuk efek kedalaman */
         background-color: #fff;
         /* Latar belakang putih */
      }

      thead {
         background-color: #007BFF;
         /* Warna latar kepala tabel */
         color: white;
         /* Warna teks kepala tabel */
      }

      th,
      td {
         padding: 12px 15px;
         /* Ruang di dalam sel */
         border: 1px solid #ddd;
         /* Garis batas */
         text-align: left;
         /* Rata kiri teks dalam sel */
      }

      tr:nth-child(even) {
         background-color: #f9f9f9;
         /* Warna latar untuk baris genap */
      }

      tr:hover {
         background-color: #f1f1f1;
         /* Warna latar saat hover */
      }

      th {
         font-weight: bold;
         /* Tebal untuk kepala tabel */
         text-transform: uppercase;
         /* Huruf kapital untuk kepala tabel */
      }
   </style>
</head>

<body>
   <h1>Data Pengguna</h1>
   <div class=" w-[500px] border border-slate-600 rounded-md p-4">
      <div class="py-4 border-b border-slate-600">
         <b>Nama : </b>{{ $data->name ?? "Fajriyan" }} [#{{ $data->unique_id }}]
      </div>
      <div class="py-4 border-b border-slate-600">
         <b>Email : </b>{{ $data->email ?? "Fajriyan" }}
      </div>
      <div class="py-4 border-b border-slate-600">
         <b>Alamat : </b>{{ $data->location ?? "Fajriyan" }}
      </div>
      <div class="py-4 border-b border-slate-600">
         <b>Status : </b>{{ $data->status ?? "Fajriyan" }}
      </div>
      <div class="py-4 ">
         <b>Keterangan Paket : </b>{{ $data->name_package ?? "Fajriyan" }} ({{ $data->id_package ?? "av5sd7" }})
      </div>
   </div>
</body>

</html>