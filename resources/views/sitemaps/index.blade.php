<?php echo '<?xml version="1.0" encoding="UTF-8"?>'; ?>

<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    @foreach($collections as $collection)
        <sitemap>
            <loc>{{ secure_url('/sitemap-' . $collection . '.xml') }}</loc>
            <lastmod>{{ now()->toAtomString() }}</lastmod>
        </sitemap>
    @endforeach
</sitemapindex>
