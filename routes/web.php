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



Route::middleware(['statamic.cp'])->group(function () {
   Route::get('/admin/livewire-page', function () {
      $user = User::current();

      if (!$user) {
         return redirect('/admin')->withErrors('Silakan login terlebih dahulu.');
      }

      if ($user->isSuper()) {
         return view('Pages.Admin.Test');
      }
      abort(403, 'Anda tidak memiliki izin untuk mengakses halaman ini.');
   });
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