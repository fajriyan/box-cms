<?php

namespace App\Http\Controllers;

use App\Models\Sitemap;
use Illuminate\Http\Request;

class SitemapController extends Controller
{
    public function index()
    {
        $excluded = config('sitemap.excluded');
        $collections = Sitemap::select('collection')
            ->whereNotIn('collection', $excluded)
            ->distinct()
            ->pluck('collection');

        return response()
            ->view('sitemaps.index', compact('collections'))
            ->header('Content-Type', 'application/xml');
    }

    public function collection($collection)
    {
        $excluded = config('sitemap.excluded');
        if (in_array($collection, $excluded)) {
            abort(404);
        }

        $items = Sitemap::where('collection', $collection)
            ->where('is_active', true)
            ->get();

        abort_if($items->isEmpty(), 404);

        return response()
            ->view('sitemaps.collection', compact('items'))
            ->header('Content-Type', 'application/xml');
    }
}
