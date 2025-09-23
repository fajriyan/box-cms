<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Sitemap;
use Illuminate\Http\Request;

class SitemapAdminController extends Controller
{

    public function index(Request $request)
    {
        $collections = Sitemap::select('collection')
            ->distinct()
            ->pluck('collection');

        $query = Sitemap::query();

        $filterCollection = $request->input('collection', 'pages');

        if ($filterCollection) {
            $query->where('collection', $filterCollection);
        }

        $sitemaps = $query->orderBy('id')->get();

        // Kalau request AJAX, return partial (tbody saja)
        if ($request->ajax()) {
            return view('admin.sitemaps.table-body', compact('sitemaps'));
        }

        return view('admin.sitemaps.index', compact('sitemaps', 'collections', 'filterCollection'));
    }



    public function store(Request $request)
    {
        $data = $request->validate([
            'collection' => 'required|string|max:255',
            'url' => 'required|string|max:255',
            'changefreq' => 'nullable|string|max:50',
            'priority' => 'nullable|numeric|min:0|max:1',
            'lastmod' => 'nullable|date',
        ]);

        $sitemap = Sitemap::create($data);

        return response()->json($sitemap);
    }

    public function show(Sitemap $sitemap)
    {
        return response()->json($sitemap);
    }

    public function update(Request $request, Sitemap $sitemap)
    {
        $data = $request->only([
            'collection',
            'url',
            'changefreq',
            'priority',
            'lastmod',
            'is_active'
        ]);

        $rules = [
            'collection' => 'sometimes|required|string|max:255',
            'url' => 'sometimes|required|string|max:255',
            'changefreq' => 'sometimes|nullable|string|max:50',
            'priority' => 'sometimes|nullable|numeric|min:0|max:1',
            'lastmod' => 'sometimes|nullable|date',
            'is_active' => 'sometimes|boolean',
        ];

        $validated = $request->validate($rules);

        $sitemap->update($validated);

        return response()->json([
            'success' => true,
            'data' => $sitemap
        ]);
    }


    public function destroy(Sitemap $sitemap)
    {
        $sitemap->delete();
        return response()->json(['success' => true]);
    }

    public function toggleActive(Sitemap $sitemap)
    {
        $sitemap->is_active = !$sitemap->is_active;
        $sitemap->save();
        return response()->json($sitemap);
    }
}
