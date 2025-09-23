<?php

return [
   'excluded' => array_filter(explode(',', env('SITEMAP_EXCLUDE', ''))),
];
