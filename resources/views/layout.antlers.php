<!DOCTYPE html>
<html lang="{{ site:short_locale }}">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#FFFFFF" />
    <meta name="msapplication-TileColor" content="#FFFFFF" />
    <meta name="csrf-token" content="{{ csrf_token }}" />

    <title>{{ meta_title ?? "BOX CMS" }}</title>
    <meta name="description" content="{{ meta_description }}" />
    <meta
      name="robots"
      content="{{ if robots }}
            {{ robots }}
                {{ value }}{{ if not last }},{{ /if }}
            {{ /robots }}
        {{ else }}
            noindex, nofollow
        {{ /if }}"
    />

    <link
      rel="apple-touch-icon"
      sizes="180x180"
      href="/assets/static/favicon.png"
    />
    <link
      rel="apple-touch-icon-precomposed"
      sizes="180x180"
      href="/assets/static/favicon.png"
    />
    <link rel="icon" href="/assets/static/favicon.png" />

    <link
      rel="canonical"
      href="{{ if meta_canonical }}{{ meta_canonical | replace(' ', '') }}{{ else }}{{ config:app.url }}{{ url | replace(' ', '') }}{{ /if }}"
    />

    <!-- Facebook Meta Tags -->
    <meta
      property="og:url"
      content="{{ if meta_canonical }}{{ meta_canonical | replace(' ', '') }}{{ else }}{{ config:app.url }}{{ url | replace(' ', '') }}{{ /if }}"
    />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="{{ meta_title }}" />
    <meta property="og:description" content="{{ meta_description }}" />
    {{ if meta_featured_image_custom == "true"}}
    <meta
      property="og:image"
      content="{{ if meta_featured_image }}{{
        meta_featured_image
      }}{{ else }}Fallback Image{{ /if }}"
    />
    {{ else }}
    <meta
      property="og:image"
      content="{{ if meta_featured_image }}{{ config:app.url | trim('/') }}{{
        meta_featured_image
      }}{{ else }}Fallback Image{{ /if }}"
    />
    {{ /if }}
    <meta property="og:locale" content="id_ID" />
    <meta property="og:type" content="article" />
    <meta property="og:site_name" content="Boring Monday" />
    <meta
      property="og:image:alt"
      content="{{
        meta_featured_image.alt
          ? meta_featured_image.alt
          : (meta_featured_image | pathinfo : filename)
      }}"
    />
    <meta property="og:image:type" content="image/webp" />

    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta
      property="twitter:domain"
      content="{{ if meta_canonical }}{{ meta_canonical | replace(' ', '') }}{{ else }}{{ config:app.url }}{{ url | replace(' ', '') }}{{ /if }}"
    />
    <meta
      property="twitter:url"
      content="{{ if meta_canonical }}{{ meta_canonical | replace(' ', '') }}{{ else }}{{ config:app.url }}{{ url | replace(' ', '') }}{{ /if }}"
    />

    <meta name="twitter:title" content="{{ meta_title }}" />
    <meta name="twitter:description" content="{{ meta_description }}" />
    {{ if meta_featured_image_custom == "true"}}
    <meta
      property="og:image"
      content="{{ if meta_featured_image }}{{
        meta_featured_image
      }}{{ else }}Fallback Image{{ /if }}"
    />
    {{ else }}
    <meta
      property="twitter:image"
      content="{{ if meta_featured_image }}{{ config:app.url | trim('/') }}{{
        meta_featured_image
      }}{{ else }}Fallback Image{{ /if }}"
    />
    {{ /if }}

    {{ vite src="resources/js/site.js|resources/css/site.css" }}

    <script type="application/ld+json">
      {
          "@context": "https://schema.org",
          "@type": "NewsArticle",
          "headline": "{{ meta_title }}",
          "description": "{{ meta_description }}",
          "image": [
            "{{
                meta_featured_image.alt
                  ? meta_featured_image.alt
                  : (meta_featured_image | pathinfo : filename)
              }}"
          ],
          "datePublished": "{{ date format="Y-m-d" }}",
          "dateModified": "{{ last_update format="Y-m-d H:i"}}",
          "author": {
            "@type": "Organization",
            "name": "Boring Monday",
            "url": "https://boringmonday.co",
            "logo": {
              "@type": "ImageObject",
              "url": "https://boringmonday.co/favicon.ico"
            }
          },
          "publisher": {
            "@type": "Organization",
            "name": "Boring Monday",
            "url": "https://boringmonday.co/editor-board",
            "logo": {
              "@type": "ImageObject",
              "url": "https://boringmonday.co/favicon.ico"
            }
          },
          "mainEntityOfPage": {
            "@type": "WebPage",
            "@id": "{{ if meta_canonical }}{{ meta_canonical | replace(' ', '') }}{{ else }}{{ config:app.url }}{{ url | replace(' ', '') }}{{ /if }}"
          }
        }
    </script>
  </head>
  <body class="">
    {{ livewire:Components.Navbar }}
    <div class="">{{ template_content }}</div>
    {{ livewire:scripts }}
  </body>
</html>
