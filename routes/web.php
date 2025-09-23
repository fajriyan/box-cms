<?php

use App\Http\Controllers\Admin\SitemapAdminController;
use App\Http\Controllers\SitemapController;
use App\Livewire\Pages\BookingApply;
use App\Livewire\Pages\BookingCheck;
use App\Livewire\Pages\CareerApply;
use App\Livewire\Pages\StepTrial;
use Illuminate\Support\Facades\Artisan;
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

Route::get('/sitemap-index.xml', [SitemapController::class, 'index']);
Route::get('/sitemap-{collection}.xml', [SitemapController::class, 'collection']);

Route::middleware(['web', 'can:access cp'])
   ->prefix('admin')->group(function () {
      Route::get('/management-sitemap', function () {
         return view('admin.sitemaps.sitemap-manager');
      })->name('admin.sitemap.manager');

      Route::get('/generate-sitemap', function () {
         Artisan::call('sitemap:generate');
         $output = Artisan::output();

         return redirect()->back()->with('success', $output);
      })->name('admin.generate.sitemap');

      Route::get('/generate-sitemap-all', function () {
         Artisan::call('sitemap:generate --prune');
         $output = Artisan::output();

         return redirect()->back()->with('success', $output);
      })->name('admin.generate.sitemap.all');
   });

Route::prefix('admin/sitemaps')->group(function () {
   Route::post('/', [SitemapAdminController::class, 'store'])->name('admin.sitemaps.store');
   Route::get('/{sitemap}', [SitemapAdminController::class, 'show'])->name('admin.sitemaps.show');
   Route::put('/{sitemap}', [SitemapAdminController::class, 'update'])->name('admin.sitemaps.update');
   Route::delete('/{sitemap}', [SitemapAdminController::class, 'destroy'])->name('admin.sitemaps.destroy');
   Route::post('/toggle/{sitemap}', [SitemapAdminController::class, 'toggleActive'])->name('admin.sitemaps.toggle');
});