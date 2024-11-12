@php use function Statamic\trans as __; @endphp

@extends('statamic::layout')
@section('title', __('Dashboard'))

@section('content')
@php
use Statamic\Facades\Form;
use Statamic\Facades\Collection;
use Illuminate\Support\Facades\DB;

$pages = Collection::find('pages')->queryEntries()->count();
@endphp


<div class="widgets @container flex flex-wrap -mx-4 py-2 ">
   <div class="card card-lg p-10 text-css-cp content w-full border-4 cek">
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
   </div>
</div>

@include('statamic::partials.docs-callout', [
'topic' => __('Widgets'),
'url' => Statamic::docsUrl('widgets')
])

@stop