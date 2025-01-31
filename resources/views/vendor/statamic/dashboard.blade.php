@php use function Statamic\trans as __; @endphp

@extends('statamic::layout')
@section('title', __('Dashboard'))

@vite('resources/css/cp.css')
@section('content')
@php
use Statamic\Facades\Form;
use Statamic\Facades\Collection;
use Illuminate\Support\Facades\DB;

$pages = Collection::find('pages')->queryEntries()->count();
@endphp


<div class="widgets @container flex flex-wrap -mx-4 py-2 ">
   <div class="card card-lg p-10 text-css-cp content w-full ">
      <h2 style="font-size: 20px; font-weight: 700; color: rgb(115 128 140 / var(--tw-text-opacity));">
         Informasi Website</h2>
      <div class="mt-5 flex" style="gap: 15px">
         <div class="card-in-statistic" style="padding: 15px; border: 1px solid #2e9fff; border-radius: 5px;">
            <p style="font-size: 25px; font-weight: 700">{{ $pages }}</p>
            <p>
               Jumlah Halaman
            </p>
            <a href="/cp/collections/news" class="btn-primary">Buka Halaman</a>
         </div>
      </div>
      <div class="mt-10">
         <h2 class="text-xl text-slate-600">Find me somewhere else</h2>
         <div class="flex gap-3 items-center">
            <a href="https://fajriyan.pages.dev/">
               <svg class="w-8 h-8 text-slate-600 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path stroke="currentColor" stroke-linecap="round" stroke-width="2" d="M4.37 7.657c2.063.528 2.396 2.806 3.202 3.87 1.07 1.413 2.075 1.228 3.192 2.644 1.805 2.289 1.312 5.705 1.312 6.705M20 15h-1a4 4 0 0 0-4 4v1M8.587 3.992c0 .822.112 1.886 1.515 2.58 1.402.693 2.918.351 2.918 2.334 0 .276 0 2.008 1.972 2.008 2.026.031 2.026-1.678 2.026-2.008 0-.65.527-.9 1.177-.9H20M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                </svg>                
            </a>
            <a href="mailto:fajriyan20@gmail.com">
               <svg class="w-8 h-8 text-slate-600 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path stroke="currentColor" stroke-linecap="round" stroke-width="2" d="m3.5 5.5 7.893 6.036a1 1 0 0 0 1.214 0L20.5 5.5M4 19h16a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1Z"/>
               </svg>                               
            </a>
            <a href="https://www.instagram.com/fajriyan.nur">
               <svg class="w-8 h-8 text-slate-600 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="currentColor" fill-rule="evenodd" d="M3 8a5 5 0 0 1 5-5h8a5 5 0 0 1 5 5v8a5 5 0 0 1-5 5H8a5 5 0 0 1-5-5V8Zm5-3a3 3 0 0 0-3 3v8a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8a3 3 0 0 0-3-3H8Zm7.597 2.214a1 1 0 0 1 1-1h.01a1 1 0 1 1 0 2h-.01a1 1 0 0 1-1-1ZM12 9a3 3 0 1 0 0 6 3 3 0 0 0 0-6Zm-5 3a5 5 0 1 1 10 0 5 5 0 0 1-10 0Z" clip-rule="evenodd"/>
                </svg>                
            </a>
            <a href="https://github.com/fajriyan/">
               <svg class="w-8 h-8 text-slate-600 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                  <path fill-rule="evenodd" d="M12.006 2a9.847 9.847 0 0 0-6.484 2.44 10.32 10.32 0 0 0-3.393 6.17 10.48 10.48 0 0 0 1.317 6.955 10.045 10.045 0 0 0 5.4 4.418c.504.095.683-.223.683-.494 0-.245-.01-1.052-.014-1.908-2.78.62-3.366-1.21-3.366-1.21a2.711 2.711 0 0 0-1.11-1.5c-.907-.637.07-.621.07-.621.317.044.62.163.885.346.266.183.487.426.647.71.135.253.318.476.538.655a2.079 2.079 0 0 0 2.37.196c.045-.52.27-1.006.635-1.37-2.219-.259-4.554-1.138-4.554-5.07a4.022 4.022 0 0 1 1.031-2.75 3.77 3.77 0 0 1 .096-2.713s.839-.275 2.749 1.05a9.26 9.26 0 0 1 5.004 0c1.906-1.325 2.74-1.05 2.74-1.05.37.858.406 1.828.101 2.713a4.017 4.017 0 0 1 1.029 2.75c0 3.939-2.339 4.805-4.564 5.058a2.471 2.471 0 0 1 .679 1.897c0 1.372-.012 2.477-.012 2.814 0 .272.18.592.687.492a10.05 10.05 0 0 0 5.388-4.421 10.473 10.473 0 0 0 1.313-6.948 10.32 10.32 0 0 0-3.39-6.165A9.847 9.847 0 0 0 12.007 2Z" clip-rule="evenodd"/>
                </svg>                
            </a>
            <a href="https://www.linkedin.com/in/fajriyan/">
               <svg class="w-8 h-8 text-slate-600 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                  <path fill-rule="evenodd" d="M12.51 8.796v1.697a3.738 3.738 0 0 1 3.288-1.684c3.455 0 4.202 2.16 4.202 4.97V19.5h-3.2v-5.072c0-1.21-.244-2.766-2.128-2.766-1.827 0-2.139 1.317-2.139 2.676V19.5h-3.19V8.796h3.168ZM7.2 6.106a1.61 1.61 0 0 1-.988 1.483 1.595 1.595 0 0 1-1.743-.348A1.607 1.607 0 0 1 5.6 4.5a1.601 1.601 0 0 1 1.6 1.606Z" clip-rule="evenodd"/>
                  <path d="M7.2 8.809H4V19.5h3.2V8.809Z"/>
                </svg>                
            </a>
            <a href="https://unsplash.com/@fajriyan">
               <svg class="w-8 h-8 text-slate-600 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                  <path fill-rule="evenodd" d="M7.5 4.586A2 2 0 0 1 8.914 4h6.172a2 2 0 0 1 1.414.586L17.914 6H19a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h1.086L7.5 4.586ZM10 12a2 2 0 1 1 4 0 2 2 0 0 1-4 0Zm2-4a4 4 0 1 0 0 8 4 4 0 0 0 0-8Z" clip-rule="evenodd"/>
                </svg>                
            </a>
         </div>
      </div>
      <div class="mt-10">
         <h6>information</h6>
         <div class="flex gap-2">
            <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/fajriyan/box-cms?label=last%20update">
            <img alt="GitHub forks" src="https://img.shields.io/github/forks/fajriyan/box-cms?style=plastic">
            <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/fajriyan/box-cms?style=plastic">
         </div>
      </div>
   </div>
</div>

@include('statamic::partials.docs-callout', [
'topic' => __('Widgets'),
'url' => Statamic::docsUrl('widgets')
])

@stop