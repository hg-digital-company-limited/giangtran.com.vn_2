<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large" />
    <meta name="google" content="notranslate">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:url" content="{{ url('/') }}">
    <meta name="twitter:url" content="{{ url('/') }}">
    <meta name="google-site-verification" content="XdpPCe9WLWMZA9pEynO-7B7lRoimKZl7qFlCqvZsVlo">
    <link rel="shortcut icon" src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('icon'))) }}" type="image/png">

    <meta name="description"
        content="{{ App\Helpers\SettingsHelper::getSetting('website_name') }} - Chuyên thiết kế website Bán Code, Mã, Sản phẩm, chuẩn SEO, chuyên nghiệp">
    <meta name="twitter:image" content="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner'))) }}" /> <!-- Add your image path here -->
    <meta property="og:image" content="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner'))) }}">
    <meta property="og:image" itemprop="thumbnailUrl" content="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner'))) }}">



    <link rel="stylesheet" href="/assets/static/style.css?v=2097735562">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <link rel="stylesheet" href="/assets/static/style.css?v=758177082">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdn.jsdelivr.net/gh/lelinh014756/fui-toast-js@master/assets/css/toast@1.0.1/fuiToast.min.css">
    <script type="text/javascript"
        src="https://cdn.jsdelivr.net/gh/lelinh014756/fui-toast-js@master/assets/js/toast@1.0.1/fuiToast.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css" />
    <script defer src="/assets/static/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script defer src="/assets/static/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/assets/static/style.css?v=62348332">
    <script src="/assets/static/script.js"></script>
    <style>
        .preloader {
            display: -ms-flexbox;
            display: flex;
            background-color: #f4f6f9;
            height: 100vh;
            width: 100%;
            transition: height 200ms linear;
            position: fixed;
            left: 0;
            top: 0;
            z-index: 9999;
        }

        .animation__shake {
            -webkit-animation: shake 1.5s;
            animation: shake 1.5s;
            width: 50vw;
            height: initial;
        }

        @keyframes shake {
            0% {
                transform: translate(2px, 1px) rotate(0deg);
            }

            10% {
                transform: translate(-1px, -2px) rotate(-2deg);
            }

            20% {
                transform: translate(-3px, 0) rotate(3deg);
            }

            30% {
                transform: translate(0, 2px) rotate(0deg);
            }

            40% {
                transform: translate(1px, -1px) rotate(1deg);
            }

            50% {
                transform: translate(-1px, 2px) rotate(-1deg);
            }

            60% {
                transform: translate(-3px, 1px) rotate(0deg);
            }

            70% {
                transform: translate(2px, 1px) rotate(-2deg);
            }

            80% {
                transform: translate(-1px, -1px) rotate(4deg);
            }

            90% {
                transform: translate(2px, 2px) rotate(0deg);
            }

            100% {
                transform: translate(1px, -2px) rotate(-1deg);
            }
        }
    </style>
    @livewireStyles
</head>

<body>
    {{ $slot }}
    @livewireScripts
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <x-livewire-alert::scripts />
</body>


<!-- Google tag (gtag.js) -->

@livewire('inc.social-popup')
<script>
    setTimeout(function() {
        var $preloader = document.querySelector('.preloader');
        var $animation__shake = document.querySelector('.animation__shake');

        if ($preloader) {
            $preloader.style.height = '0';
            setTimeout(function() {
                if ($animation__shake) {
                    $animation__shake.style.display = 'none';
                }
            }, 200);
        }
    }, 800);
</script>

</html>
