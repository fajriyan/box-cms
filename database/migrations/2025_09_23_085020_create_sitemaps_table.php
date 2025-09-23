<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sitemaps', function (Blueprint $table) {
            $table->id();
            $table->string('collection');          // ex: artikel, halaman, produk
            $table->string('url');                 // ex: /artikel/slug
            $table->string('changefreq')->default('weekly');
            $table->decimal('priority', 2, 1)->default(0.5);
            $table->timestamp('lastmod')->nullable();
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sitemaps');
    }
};
