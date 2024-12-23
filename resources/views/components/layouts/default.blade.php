<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large"/>
    <meta name="google" content="notranslate">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:url" content="{{ url('/') }}">
    <meta name="twitter:url" content="{{ url('/') }}">
    <meta name="google-site-verification" content="W1Wf5_b9Yoc5PaKmRkfDJB0bzRUGDkcn2rDUhja0skU" />
    <link rel="shortcut icon" href="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('icon'))) }}" type="image/png">
    <meta name="description"
        content="{{ App\Helpers\SettingsHelper::getSetting('website_description') }}">
    <meta name="twitter:image" content="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner'))) }}" /> <!-- Add your image path here -->
    <meta property="og:image" content="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner'))) }}">
    <meta property="og:image" itemprop="thumbnailUrl" content="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner'))) }}">
    @livewireStyles
</head>

<body>
    {{ $slot }}
    @livewireScripts
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <x-livewire-alert::scripts />
</body>


</html>
