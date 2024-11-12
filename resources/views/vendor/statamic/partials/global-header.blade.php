@php use function Statamic\trans as __; @endphp

<div class="global-header">
    <div class="lg:min-w-xl rtl:pr-2 ltr:pl-2 rtl:md:pr-6 ltr:md:pl-6 h-full flex items-center">
        <button class="nav-toggle hidden md:flex rtl:mr-1 ltr:ml-1 shrink-0" @click="toggleNav" aria-label="{{ __('Toggle Nav') }}">@cp_svg('icons/light/burger', 'h-4 w-4')</button>
        <button class="nav-toggle md:hidden rtl:mr-1 ltr:ml-1 shrink-0" @click="toggleMobileNav" v-if="! mobileNavOpen" aria-label="{{ __('Toggle Mobile Nav') }}">@cp_svg('icons/light/burger', 'h-4 w-4')</button>
        <button class="nav-toggle md:hidden rtl:mr-1 ltr:ml-1 shrink-0" @click="toggleMobileNav" v-else v-cloak aria-label="{{ __('Toggle Mobile Nav') }}">@cp_svg('icons/light/close', 'h-3 w-3')</button>
        <a href="{{ route('statamic.cp.index') }}" class="flex items-end">
            <div v-tooltip="version" class="hidden md:block shrink-0">
                {{-- @if ($customLogo)
                    <img src="{{ $customLogo }}" alt="{{ config('statamic.cp.custom_cms_name') }}" class="white-label-logo dark:hidden">
                    <img src="{{ $customDarkLogo }}" alt="{{ config('statamic.cp.custom_cms_name') }}" class="white-label-logo hidden dark:block">
                @elseif ($customLogoText)
                    <span class="font-medium">{{ $customLogoText }}</span>
                @else
                    @cp_svg('statamic-wordmark', 'w-24 logo')
                    @if (Statamic::pro())<span class="font-bold text-4xs align-top uppercase">{{ __('Pro') }}</span>@endif
                @endif --}}
                <div class="">
                    <p>fajriyan</p>
                </div>
            </div>
        </a>
    </div>

    <div class="sm:px-8 w-full flex-1 lg:flex items-center lg:justify-center mx-auto max-w-full">
        {{-- <global-search ref="globalSearch" endpoint="{{ cp_route('search') }}" placeholder="{{ __('Search...') }}">
        </global-search> --}}
    </div>

    <div class="head-link h-full px-6 space-x-3 rtl:space-x-reverse flex items-center justify-end">

        @if (Statamic\Facades\Site::authorized()->count() > 1)
            <global-site-selector>
                <template slot="icon">@cp_svg('icons/light/sites')</template>
            </global-site-selector>
        @endif

        <dark-mode-toggle initial="{{ $user->preferredTheme() }}"></dark-mode-toggle>

        {{-- <favorite-creator class="hidden md:block"></favorite-creator> --}}

        @if (Route::has('horizon.index') && \Laravel\Horizon\Horizon::check(request()))
            <a class="global-header-icon-button hidden md:block" href="{{ route('horizon.index') }}" target="_blank" v-tooltip="'Laravel Horizon'">
                @cp_svg('icons/regular/horizon')
            </a>
        @endif
        @if (Route::has('pulse') && (app()->environment('local') || $user->can('viewPulse')))
            <a class="global-header-icon-button hidden md:block" href="{{ route('pulse') }}" target="_blank" v-tooltip="'Laravel Pulse'">
                @cp_svg('icons/regular/pulse')
            </a>
        @endif

        @if (config('nova.path') && (app()->environment('local') || $user->can('viewNova')))
            <a class="global-header-icon-button hidden md:block" href="/{{ trim(config('nova.path'), '/') }}/dashboards/main" target="_blank" v-tooltip="'Laravel Nova'">
                @cp_svg('icons/regular/nova')
            </a>
        @endif

        @if (Route::has('telescope') && \Laravel\Telescope\Telescope::check(request()))
            <a class="global-header-icon-button hidden md:block" href="{{ route('telescope') }}" target="_blank" v-tooltip="'Laravel Telescope'">
                @cp_svg('icons/regular/telescope')
            </a>
        @endif

        {{-- <dropdown-list v-cloak>
            <template v-slot:trigger>
                <button class="global-header-icon-button hidden md:block" v-tooltip="__('Useful Links')" aria-label="{{ __('View Useful Links') }}">
                    @cp_svg('icons/light/book-open')
                </button>
            </template>

            @if (config('statamic.cp.link_to_docs'))
            <dropdown-item external-link="https://statamic.dev" class="flex items-center">
                <span>{{ __('Documentation') }}</span>
                <i class="w-3 block rtl:mr-2 ltr:ml-2">@cp_svg('icons/light/external-link')</i>
            </dropdown-item>
            @endif

            @if (config('statamic.cp.support_url'))
            <dropdown-item external-link="{{ config('statamic.cp.support_url') }}" class="flex items-center">
                <span>{{ __('Support') }}</span>
                <i class="w-3 block rtl:mr-2 ltr:ml-2">@cp_svg('icons/light/external-link')</i>
            </dropdown-item>
            @endif

            <dropdown-item @click="$events.$emit('keyboard-shortcuts.open')" class="flex items-center">
                <span>{{ __('Keyboard Shortcuts') }}</span>
            </dropdown-item>
        </dropdown-list> --}}

        <a class="global-header-icon-button hidden md:block" href="{{ Statamic\Facades\Site::selected()->url() }}" target="_blank" v-tooltip="'{{ __('View Site') }}'" aria-label="{{ __('View Site') }}">
            {{-- @cp_svg('icons/light/browser-com') --}}
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-globe" viewBox="0 0 16 16">
                <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m7.5-6.923c-.67.204-1.335.82-1.887 1.855A8 8 0 0 0 5.145 4H7.5zM4.09 4a9.3 9.3 0 0 1 .64-1.539 7 7 0 0 1 .597-.933A7.03 7.03 0 0 0 2.255 4zm-.582 3.5c.03-.877.138-1.718.312-2.5H1.674a7 7 0 0 0-.656 2.5zM4.847 5a12.5 12.5 0 0 0-.338 2.5H7.5V5zM8.5 5v2.5h2.99a12.5 12.5 0 0 0-.337-2.5zM4.51 8.5a12.5 12.5 0 0 0 .337 2.5H7.5V8.5zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5zM5.145 12q.208.58.468 1.068c.552 1.035 1.218 1.65 1.887 1.855V12zm.182 2.472a7 7 0 0 1-.597-.933A9.3 9.3 0 0 1 4.09 12H2.255a7 7 0 0 0 3.072 2.472M3.82 11a13.7 13.7 0 0 1-.312-2.5h-2.49c.062.89.291 1.733.656 2.5zm6.853 3.472A7 7 0 0 0 13.745 12H11.91a9.3 9.3 0 0 1-.64 1.539 7 7 0 0 1-.597.933M8.5 12v2.923c.67-.204 1.335-.82 1.887-1.855q.26-.487.468-1.068zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.7 13.7 0 0 1-.312 2.5m2.802-3.5a7 7 0 0 0-.656-2.5H12.18c.174.782.282 1.623.312 2.5zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7 7 0 0 0-3.072-2.472c.218.284.418.598.597.933M10.855 4a8 8 0 0 0-.468-1.068C9.835 1.897 9.17 1.282 8.5 1.077V4z"/>
              </svg>
        </a>
        <dropdown-list v-cloak>
            <template v-slot:trigger>
                <a class="dropdown-toggle items-center h-full hide flex relative group">
                    @if ($user->avatar())
                        <div class="icon-header-avatar {{ session()->get('statamic_impersonated_by') ? 'animate-radar' : '' }}"><img src="{{ $user->avatar() }}" /></div>
                    @else
                        <div class="icon-header-avatar {{ session()->get('statamic_impersonated_by') ? 'animate-radar' : '' }} icon-user-initials">{{ $user->initials() }}</div>
                    @endif
                </a>
            </template>

            <div class="px-2">
                <div class="text-base mb-px">{{ $user->email() }}</div>
                @if ($user->isSuper())
                    <div class="text-2xs mt-px text-gray-600">{{ __('Super Admin') }} @if (session()->get('statamic_impersonated_by'))(Impersonating)@endif</div>
                @elseif (session()->get('statamic_impersonated_by'))
                    <div class="text-2xs mt-px text-gray-600">{{ __('Impersonating') }}</div>
                @endif
            </div>
            <div class="divider"></div>

            <dropdown-item :text="__('Profile')" redirect="{{ route('statamic.cp.account') }}"></dropdown-item>
            <dropdown-item :text="__('Preferences')" redirect="{{ cp_route('preferences.user.edit') }}"></dropdown-item>
            @if (session()->get('statamic_impersonated_by'))
                <dropdown-item :text="__('Stop Impersonating')" redirect="{{ cp_route('impersonation.stop') }}"></dropdown-item>
            @endif
            <dropdown-item :text="__('Log out')" redirect="{{ route('statamic.cp.logout', ['redirect' => cp_route('index')]) }}"></dropdown-item>
        </dropdown-list>
    </div>
</div>

<div v-if="$refs.globalSearch?.focused" v-cloak class="fixed inset-0 h-full w-full bg-black/10 z-2"></div>
