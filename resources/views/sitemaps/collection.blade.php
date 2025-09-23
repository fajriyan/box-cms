<?php echo '<?xml version="1.0" encoding="UTF-8"?>'; ?>

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    @foreach($items as $item)
        <url>
            <loc>{{ secure_url($item->url) }}</loc>
            @if($item->lastmod)
                <lastmod>{{ $item->lastmod->toAtomString() }}</lastmod>
            @endif
            <changefreq>{{ $item->changefreq }}</changefreq>
            <priority>{{ $item->priority }}</priority>
        </url>
    @endforeach
</urlset>
