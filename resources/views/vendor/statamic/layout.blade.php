<!doctype html>
<html lang="{{ Statamic::cpLocale() }}" dir="{{ Statamic::cpDirection() }}"
    class="{{ $user->preferredTheme() === 'dark' ? 'dark' : '' }}">

<head>
    @vite('resources/css/cp.css')
    @livewireStyles
    @include('statamic::partials.head')
</head>

<body>
    <div id="statamic">
        @include('statamic::partials.session-expiry')
        @include('statamic::partials.licensing-alerts')
        @include('statamic::partials.global-header')

        <div id="main" class="@yield('content-class')" :class="{
                'nav-closed': ! navOpen,
                'nav-mobile-open': mobileNavOpen,
                'showing-license-banner': showBanner
            }">
            @include('statamic::partials.nav-main')
            @include('statamic::partials.nav-mobile')

            <div class="workspace">
                <div class="page-wrapper" :class="wrapperClass">
                    @yield('content')
                </div>
                <div class="px-10">
                    @yield('content-nowrap')
                </div>
            </div>

        </div>

        <component v-for="component in appendedComponents" :key="component.id" :is="component.name"
            v-bind="component.props" v-on="component.events"></component>

        <confirmation-modal v-if="copyToClipboardModalUrl" :cancellable="false" :button-text="__('OK')"
            :title="__('Copy to clipboard')" @confirm="copyToClipboardModalUrl = null">
            <div class="prose">
                <code-block :text="copyToClipboardModalUrl" />
            </div>
        </confirmation-modal>

        <keyboard-shortcuts-modal></keyboard-shortcuts-modal>

        <portal-targets></portal-targets>

    </div>

    @livewireScripts('defer')
    {{-- <script src="{{ mix('/resources/js/site.js') }}"></script> --}}
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js" defer></script>
    @include('statamic::partials.scripts')
    @yield('scripts')
</body>

</html>