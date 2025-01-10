<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="google" content="notranslate">
    <meta name="robots" content="index, follow" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="canonical" href="{{ url('/') }}" />
    <link rel="shortcut icon" href="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('icon'))) }}"
        type="image/png">
    <link rel="icon" type="image/png" sizes="32x32"
        href="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('icon'))) }}">

    <meta name="google-site-verification" content="zDwl8PmwUUK3FW1C4jD2qGWfIgEdLkyVmhvUhUrGXmU" />


    <link rel="stylesheet" href="/assets/static/style.css?v=1822759336">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdn.jsdelivr.net/gh/lelinh014756/fui-toast-js@master/assets/css/toast@1.0.1/fuiToast.min.css">
    <script type="text/javascript"
        src="https://cdn.jsdelivr.net/gh/lelinh014756/fui-toast-js@master/assets/js/toast@1.0.1/fuiToast.min.js"></script>
    <link id="googleidentityservice" type="text/css" media="all" href="https://accounts.google.com/gsi/style"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <link rel="stylesheet" href="/assets/static/style.css?v=100766406">
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <style>
        .preloader {
            display: -ms-flexbox;
            display: flex;
            background-color: #fafafa;

            height: 100vh;
            width: 100%;
            transition: height 200ms linear;
            position: fixed;
            left: 0;
            top: 0;
            z-index: 99999999;
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


        @media (max-width: 767px) {
            .page-wrapper.compact-wrapper .page-body-wrapper div.sidebar-wrapper {
                width: 100vw;
                z-index: 999999;
            }
        }
    </style>

    @livewireStyles

</head>

<body>
    @if ( \App\Helpers\SettingsHelper::getSetting('anti_devtool'))
        <script>
            // Chặn chuột phải
            document.addEventListener('contextmenu', function(e) {
                e.preventDefault(); // Ngăn chặn menu chuột phải
            });

            // Chặn F12 và các phím tắt phổ biến (Ctrl+U, Ctrl+Shift+I, Ctrl+C)
            document.addEventListener('keydown', function(e) {
                // F12
                if (e.keyCode == 123) {
                    e.preventDefault();
                }

                // Ctrl+Shift+I (Mở công cụ dev), Ctrl+Shift+C (Kiểm tra phần tử)
                if (e.ctrlKey && e.shiftKey && (e.keyCode == 73 || e.keyCode == 67)) {
                    e.preventDefault();
                }

                // Ctrl+U (Xem mã nguồn)
                if (e.ctrlKey && e.keyCode == 85) {
                    e.preventDefault();
                }

                // Ctrl+C (Sao chép)
                if (e.ctrlKey && e.keyCode == 67) {
                    e.preventDefault();
                }
                // Ngăn chặn Ctrl + S (Lưu trang)
                if (e.ctrlKey && e.keyCode === 83) { // Ctrl + S
                    e.preventDefault(); // Ngăn chặn hành động mặc định (lưu trang)
                }
            });
            // Chặn copy (sao chép) văn bản bằng cách chặn sự kiện copy
            document.addEventListener('copy', function(e) {
                e.preventDefault(); // Ngăn chặn copy
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/devtools-detector@2.0.22/lib/devtools-detector.min.js"></script>
        <script>
            var view = document.createElement('div');
            document.body.appendChild(view);

            // Lắng nghe trạng thái của Developer Tools
            devtoolsDetector.addListener(function(isOpen) {
                view.innerText = isOpen ? 'devtools status: open' : 'devtools status: close';

                // Nếu Developer Tools đang mở, cho die() trang web
                if (isOpen) {
                    window.location.href = 'about:blank'; // Bạn có thể thay thế bằng die() nếu muốn

                }
            });

            // Khởi chạy phát hiện Developer Tools
            devtoolsDetector.launch();
        </script>
    @endif

    {{ $slot }}

    @livewireScripts

    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

    <script src="/assets/static/simplebar.js"></script>
    <script defer>
        setTimeout(() => {
            const sidebar = document.querySelector('.sidebar-main');
            sidebar.style.opacity = '1';
        }, 1000);
    </script>
    <script src="/assets/static/invoices.js?v=1731409673"></script>
    <script src="/assets/static/jquery.min.js"></script>
    <script src="/assets/static/config.js"></script>
    <script src="/assets/static/cyberlux.js"></script>
    <script src="/assets/static/handlebars.min.js"></script>
    <script src="/assets/static/jquery.dataTables.min.js"></script>
    <script src="/assets/static/datatable.custom.js"></script>
    <script src="/assets/static/bundle.min.js"></script>
    <script src="/assets/static/feather.min.js"></script>
    <script src="/assets/static/bootstrap.bundle.min.js"></script>
    <script src="/assets/static/feather.min.js"></script>
    <script src="/assets/static/feather-icon.js"></script>
    <script src="/assets/static/custom.js"></script>
    <script src="/assets/static/swiper-bundle.min.js"></script>
    <script src="/assets/static/sidebar-menu.js"></script>
    <script src="/assets/static/sidebar-pin.js"></script>
    <script src="/assets/static/bootstrap-notify.min.js"></script>
    <script src="/assets/static/index.js"></script>
    <script src="/assets/static/custom_touchspin.js"></script>
    <script src="/assets/static/simple-datatable.js"></script>
    <script src="/assets/static/handlebars.js"></script>
    <script src="/assets/static/typeahead.bundle.js"></script>
    <script src="/assets/static/typeahead.custom.js"></script>
    <script src="/assets/static/search-handlebars.js"></script>
    <script src="/assets/static/script.js"></script>
    <script src="/assets/static/customizer.js"></script>
    <script src="/assets/static/profile-option.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <x-livewire-alert::scripts />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js" defer></script>

</body>


@livewire('inc.social-popup')
@livewire('inc.alert')
<div class="chat-widget">
    <div class="chat-item zalo">
        <a href="{{ App\Helpers\SettingsHelper::getSetting('contact') }}" target="_blank">
            <img src="{{ asset('logo/zalo.gif') }}" alt="Chat với Zalo" class="chat-gif">
        </a>
    </div>
</div>
<style>
    .chat-widget {
        position: fixed;
        bottom: 50px;
        right: 20px;
        z-index: 1000;
        display: flex;
        flex-direction: column;
        gap: 18px;
    }

    .chat-item.zalo {
        margin-right: 14px;
    }

    .chat-gif {
        width: 80px;
        height: auto;
        transition: transform .3s ease;
    }
</style>

</html>
