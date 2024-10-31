<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $title ?? 'Data' }}</title>
    @vite('resources/css/site.css','resources/js/site.js')
</head>

<body>
    @livewire('Components.Navbar')
    {{ $slot }}
    @livewireScripts
</body>