<?php

namespace App\Console\Commands;

use App\Models\Sitemap;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;

class GenerateSitemaps extends Command
{
    protected $signature = 'sitemap:generate {--prune : Nonaktifkan entri sitemap yang sudah tidak ada lagi di entries}';
    protected $description = 'Generate/Sync sitemaps from Statamic entries table (published, noindex/exclude aware)';

    public function handle()
    {
        // Ambil hanya kolom yang dibutuhkan biar irit memori
        $query = DB::table('entries')->select([
            'id',
            'site',
            'published',
            'slug',
            'uri',
            'collection',
            'data',
            'updated_at',
            'created_at'
        ]);

        // Kalau datanya banyak, pakai chunk
        $chunkSize = 500;

        $created = 0;
        $updated = 0;
        $skipped = 0;
        $deactivated = 0;

        // Untuk keperluan --prune (dan untuk unpublish/exclude)
        // kita track pasangan (collection|url) yang valid & yang harus dinonaktifkan.
        $keptKeys = [];       // yang tetap aktif
        $blockedKeys = [];    // yang harus dinonaktifkan (unpublish/exclude/noindex)

        // $this->info('🔧 Sinkronisasi sitemap dari tabel entries...');

        $query->orderBy('id')->chunk($chunkSize, function ($entries) use (&$created, &$updated, &$skipped, &$keptKeys, &$blockedKeys) {
            foreach ($entries as $entry) {
                // Parse JSON "data"
                $data = [];
                if (is_string($entry->data) && strlen($entry->data)) {
                    $data = json_decode($entry->data, true) ?: [];
                } elseif (is_array($entry->data)) {
                    $data = $entry->data;
                }

                // 1) Filter: skip jika tidak punya URI (bukan halaman), atau unpublished, atau di-exclude/noindex
                $exclude = (bool) ($data['exclude_from_sitemap'] ?? false);

                $robots = $data['robots'] ?? [];
                // Boleh string atau array; normalize ke array kecil
                if (is_string($robots))
                    $robots = array_map('trim', explode(',', strtolower($robots)));
                if (is_array($robots))
                    $robots = array_map('strtolower', $robots);

                $hasNoindex = in_array('noindex', $robots ?? [], true);

                // Build url (harus string, harus punya leading slash)
                $url = $entry->uri ?: null;
                if (is_string($url)) {
                    // Pastikan ada leading slash & bersih dari spasi
                    $url = '/' . ltrim(trim($url), '/');
                }

                // Key unik per baris sitemap (per-collection + per-url).
                // (Kalau kamu multisite, pertimbangkan tambahkan kolom "site" di tabel sitemaps dan masukin ke key.)
                $key = $entry->collection . '|' . ($url ?? '');

                // Buat lastmod (fallback ke updated_at, kalau tidak ada pakai created_at)
                $lastmod = $entry->updated_at ?: $entry->created_at;
                $lastmod = $lastmod ? Carbon::parse($lastmod) : null;

                // Changefreq & priority: bisa kamu tarik dari data JSON jika disediakan, fallback default
                $changefreq = $data['sitemap_changefreq'] ?? 'weekly';
                $priority = isset($data['sitemap_priority']) ? (float) $data['sitemap_priority'] : 0.8;

                // Jika tidak qualify → tandai untuk dinonaktifkan (kalau sebelumnya pernah ada), lalu skip
                if (!$url || !$entry->published || $exclude || $hasNoindex) {
                    if ($url) {
                        $blockedKeys[$key] = true;
                    } else {
                        $skipped++;
                    }
                    continue;
                }

                // Lolos semua filter → upsert
                $payload = [
                    'lastmod' => $lastmod,
                    'changefreq' => $changefreq,
                    'priority' => $priority,
                    'is_active' => true,
                    'updated_at' => now(),
                ];

                // Upsert berdasarkan (collection, url)
                $record = Sitemap::where('collection', $entry->collection)
                    ->where('url', $url)
                    ->first();

                if ($record) {
                    // Update jika ada perubahan berarti
                    $dirty = false;

                    foreach (['lastmod', 'changefreq', 'priority', 'is_active'] as $field) {
                        // bandingkan sederhana
                        $old = $record->{$field} instanceof Carbon ? $record->{$field}->toDateTimeString() : $record->{$field};
                        $new = $payload[$field] instanceof Carbon ? $payload[$field]->toDateTimeString() : $payload[$field];
                        if ($old != $new) {
                            $dirty = true;
                            break;
                        }
                    }

                    if ($dirty) {
                        $record->fill($payload)->save();
                        $updated++;
                    } else {
                        $skipped++; // tidak berubah
                    }
                } else {
                    Sitemap::create([
                        'collection' => $entry->collection,
                        'url' => $url,
                        'lastmod' => $payload['lastmod'],
                        'changefreq' => $payload['changefreq'],
                        'priority' => $payload['priority'],
                        'is_active' => true,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
                    $created++;
                }

                // Tandai yang valid untuk tetap aktif
                $keptKeys[$key] = true;
            }
        });

        // Nonaktifkan yang ter-block (publish→unpublish, exclude/noindex), jika pernah ada di tabel
        if (!empty($blockedKeys)) {
            $pairs = $this->splitPairs(array_keys($blockedKeys));
            $affected = Sitemap::whereIn('collection', $pairs['collections'])
                ->whereIn('url', $pairs['urls'])
                ->update(['is_active' => false]);
            $deactivated += $affected;
        }

        // --prune: nonaktifkan baris sitemap yang tidak ditemukan lagi dalam entries (mis. entry dihapus)
        if ($this->option('prune')) {
            $this->info('🧹 Menonaktifkan entri sitemap yang tidak ada lagi di entries (prune)...');
            // Kumpulkan semua pair valid (keptKeys + blockedKeys) untuk mengetahui yang dikenal
            $knownKeys = $keptKeys + $blockedKeys;
            // Ambil semua row yang tidak ada di knownKeys → set is_active=false
            $pruned = 0;

            Sitemap::chunkById(500, function ($rows) use (&$pruned, $knownKeys) {
                foreach ($rows as $row) {
                    $key = $row->collection . '|' . $row->url;
                    if (!isset($knownKeys[$key]) && $row->is_active) {
                        $row->is_active = false;
                        $row->save();
                        $pruned++;
                    }
                }
            });

            $deactivated += $pruned;
        }

        $this->info("Success. Created: {$created}, Updated: {$updated}, Deactivated: {$deactivated}, Skipped: {$skipped}");
        return self::SUCCESS;
    }

    /**
     * Helper: pecah "collection|url" jadi dua array agar bisa dipakai di whereIn
     */
    protected function splitPairs(array $keys): array
    {
        $collections = [];
        $urls = [];
        foreach ($keys as $key) {
            [$c, $u] = explode('|', $key, 2);
            $collections[] = $c;
            $urls[] = $u;
        }
        return ['collections' => array_unique($collections), 'urls' => array_unique($urls)];
    }
}
