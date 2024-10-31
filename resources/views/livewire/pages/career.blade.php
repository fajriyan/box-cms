<div>

    <section class="bg-white dark:bg-gray-900 mt-[50px]">
        <div class="container mx-auto">
            <div class="mb-8">
                <h2 class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">
                    {{ $page->main_heading }}
                </h2>
                <p class="font-light text-gray-500 sm:text-xl dark:text-gray-400">
                    {{ $page->main_description }}
                </p>
            </div>
            <div class="grid gap-8 lg:grid-cols-2">
                @forelse ($career as $item)
                <article
                    class="p-6 bg-white rounded-lg border border-gray-300 dark:bg-gray-800 dark:border-gray-700 group">
                    <div class="flex justify-between items-center mb-5 text-gray-500">
                        <span
                            class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                            <svg class="mr-1 w-3 h-3" fill="currentColor" viewBox="0 0 20 20"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M11.906 1.994a8.002 8.002 0 0 1 8.09 8.421 7.996 7.996 0 0 1-1.297 3.957.996.996 0 0 1-.133.204l-.108.129c-.178.243-.37.477-.573.699l-5.112 6.224a1 1 0 0 1-1.545 0L5.982 15.26l-.002-.002a18.146 18.146 0 0 1-.309-.38l-.133-.163a.999.999 0 0 1-.13-.202 7.995 7.995 0 0 1 6.498-12.518ZM15 9.997a3 3 0 1 1-5.999 0 3 3 0 0 1 5.999 0Z"
                                    clip-rule="evenodd" />
                            </svg>
                            {{ $item->career_location->title }}
                        </span>
                        <span class="text-sm">{{ \Carbon\Carbon::parse($item->date)->diffForHumans() }}</span>
                    </div>
                    <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        <a href="{{ $item->url }}" class="group-hover:underline w-min">{{ $item->title }}</a>
                    </h2>
                    <div class="mb-5 font-light text-gray-500 dark:text-gray-400 line-clamp-2">
                        {!! $item->description !!}
                    </div>
                    <div class="flex gap-7 items-center">
                        <div class="flex items-center space-x-2">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none"
                                viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M8 17.345a4.76 4.76 0 0 0 2.558 1.618c2.274.589 4.512-.446 4.999-2.31.487-1.866-1.273-3.9-3.546-4.49-2.273-.59-4.034-2.623-3.547-4.488.486-1.865 2.724-2.899 4.998-2.31.982.236 1.87.793 2.538 1.592m-3.879 12.171V21m0-18v2.2" />
                            </svg>
                            <span class="text-sm font-medium dark:text-white">{{ $item->salary }} </span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none"
                                viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M12 12v4m0 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4ZM8 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 0v2a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2V8m0 0a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z" />
                            </svg>
                            <span class="text-sm font-medium dark:text-white">{{ $item->career_division->title }}
                            </span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none"
                                viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M6 4h12M6 4v16M6 4H5m13 0v16m0-16h1m-1 16H6m12 0h1M6 20H5M9 7h1v1H9V7Zm5 0h1v1h-1V7Zm-5 4h1v1H9v-1Zm5 0h1v1h-1v-1Zm-3 4h2a1 1 0 0 1 1 1v4h-4v-4a1 1 0 0 1 1-1Z" />
                            </svg>
                            <span class="text-sm font-medium dark:text-white">{{ $item->career_role->title }} </span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none"
                                viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M8 7H5a2 2 0 0 0-2 2v4m5-6h8M8 7V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2m0 0h3a2 2 0 0 1 2 2v4m0 0v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6m18 0s-4 2-9 2-9-2-9-2m9-2h.01" />
                            </svg>
                            <span class="text-sm font-medium dark:text-white">{{ $item->career_position->title }}
                            </span>
                        </div>
                    </div>
                </article>
                @empty
                <div class="">
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Inventore sequi ad at laudantium
                    praesentium. Dolor laborum aperiam fugit corrupti ipsa! Inventore reiciendis perspiciatis recusandae
                    ut eveniet tempora, iure dolorum repellat.
                </div>
                @endforelse
            </div>
        </div>
    </section>
</div>