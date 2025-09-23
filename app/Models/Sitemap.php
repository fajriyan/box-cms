<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sitemap extends Model
{
    protected $fillable = [
        'collection',
        'url',
        'changefreq',
        'priority',
        'lastmod',
        'is_active',
    ];

    protected $casts = [
        'lastmod' => 'datetime',
        'is_active' => 'boolean',
    ];
}
