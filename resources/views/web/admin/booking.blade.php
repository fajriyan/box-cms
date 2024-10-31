@extends('statamic::layout', ["title"=>"Management Booking"])

@section('content-nowrap')
<div class="">
   <div class="mb-5">
      <h1 class="font-semibold">Management Booking </h1>
      <p class="text-sm">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed iure doloribus dolor, officiis,
         alias eos earum animi ut.</p>
   </div>

   <livewire:Pages.Admin.Booking.Show>
</div>
@endsection