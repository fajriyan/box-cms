@extends('statamic::layout', ["title" => "Management Sitemap"])
@vite(['resources/js/site.js'])
@vite(['resources/css/site.css'])

@section('content')
  <div class="bg-white p-5 rounded-lg overflow-hidden">
    <div class="mb-5">
      <h1 class="font-semibold">Management Sitemap </h1>
      <p class="text-sm">
        Halaman ini digunakan untuk mengelola sitemap pada website.
      </p>
    </div>

    <livewire:admin.management-sitemap />
  </div>
@endsection