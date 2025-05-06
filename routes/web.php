<?php

use App\Livewire\Pages\BookingApply;
use App\Livewire\Pages\BookingCheck;
use App\Livewire\Pages\CareerApply;
use App\Livewire\Pages\StepTrial;
use Illuminate\Support\Facades\Route;
use Statamic\Facades\User;


Route::get('karir/{slug}/apply', CareerApply::class);
Route::get('/booking/{slug}', BookingApply::class);
Route::get('/booking-cek', BookingCheck::class);
Route::get('/step', StepTrial::class);



Route::middleware(['web', 'can:access cp'])->group(function () {
   Route::get('/admin/booking', function () {
      $user = User::current();
      if (!$user) {
         return redirect('/admin')->withErrors('Silakan login terlebih dahulu.');
      }
      return view('web.admin.booking');
   })->name('admin.booking');

   Route::get('/admin/booking/{id}', function ($id) {
      $user = User::current();
      if (!$user) {
         return redirect('/admin')->withErrors('Silakan login terlebih dahulu.');
      }
      return view('web.admin.form', ['id' => $id]);
   })->name('admin.booking.edit');
});