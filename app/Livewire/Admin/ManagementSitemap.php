<?php

namespace App\Livewire\Admin;

use Livewire\Component;
use Illuminate\Http\Request;
use App\Models\Sitemap;

class ManagementSitemap extends Component
{
    public function render(Request $request)
    {
        $collections = Sitemap::select('collection')
            ->distinct()
            ->pluck('collection');

        $query = Sitemap::query();

        // Default filter 'pages'
        $filterCollection = $request->input('collection', 'pages');

        if ($filterCollection) {
            $query->where('collection', $filterCollection);
        }

        $sitemaps = $query->orderBy('id')->get();

        
        return view('livewire.admin.management-sitemap', compact('sitemaps', 'collections', 'filterCollection'));
    }
}
