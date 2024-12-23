<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="google" content="notranslate">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:url" content="{{ request()->fullUrl() }}">
    <meta name="twitter:url" content="{{ request()->fullUrl() }}">
    <meta name="google-site-verification" content="W1Wf5_b9Yoc5PaKmRkfDJB0bzRUGDkcn2rDUhja0skU" />
    <meta name="description"
    content="Tổ Yến Hạnh Phúc Vàng chuyên cung cấp Yến rút lông đặc biệt, yến rút lông thượng hạng, yến tinh chế sợi, yến chưng đường phèn nguyên chất 100% tại khu vực Long Thành Đồng Nai. Sản phẩm của chúng tôi uy tín, cao cấp và chất lượng hàng đầu , liên hệ để được tư vấn 0855 59 69 79. " />
    <link href="/assets/upload/photo/frame-427321166-2031-4420.png" rel="shortcut icon" type="image/x-icon" />

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    @livewireStyles
</head>

<body>

    {{ $slot }}

    @livewireScripts
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="/assets_client/frontend/common/js/slick.min.js?v=1721231848" defer></script>
    <x-livewire-alert::scripts />

</body>

</html>
