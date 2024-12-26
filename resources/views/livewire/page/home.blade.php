<div>

    <head>
        @livewire('inc.seo', ['title' => 'Trang Chủ - ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'description' => App\Helpers\SettingsHelper::getSetting('website_description'), 'keywords' => 'Trang Chủ, ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>

    <body id="content">
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake"
                src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('loading_image'))) }}" alt="AdminLTELogo"
                height="60" width="60">
        </div>



        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header')

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">

                        <div class="container-fluid default-dashboard">

                            <div class="row size-column">

                                <div class="col-xl-4 box-col-4">
                                    <div class="row">
                                        <div class="col-xl-12 box-col-12">
                                            <div class="card title-line upgrade-card overflow-hidden">
                                                <div class="row align-items-end">
                                                    <div class="col-sm-11 col-11">
                                                        <div class="card-header">

                                                            <h2> Tăng Tương Tác <span class="txt-danger"> Giá Rẻ
                                                                </span>
                                                            </h2>
                                                            <p class="mt-2 f-light"> Giải pháp tối ưu giúp bạn tăng
                                                                cường tương tác trên mạng xã hội, thu hút nhiều người
                                                                theo dõi và nâng cao sự hiện diện trực tuyến của bạn.
                                                            </p> <a
                                                                class="btn btn-primary btn-hover-effect btn-sm f-w-500"
                                                                href="/smm/create" wire:navigate> Mua Ngay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <img class="img-fluid pattern-image"
                                                    src="/assets/assets/images/dashboard/bg-1.png" alt="Nguyễn Thành">
                                            </div>
                                        </div>
                                        <div class="col-xl-12 box-col-12">
                                            <div class="card title-line upgrade-card overflow-hidden">
                                                <div class="row align-items-end">
                                                    <div class="col-sm-11 col-11">
                                                        <div class="card-header">

                                                            <h2> Mã Nguồn <span class="txt-danger"> Giá Rẻ </span>
                                                            </h2>
                                                            <p class="mt-2 f-light"> Giải pháp hoàn hảo giúp bạn tiết
                                                                kiệm thời gian và chi phí phát triển phần mềm với mã
                                                                nguồn chất lượng, dễ dàng tùy chỉnh và tích hợp vào dự
                                                                án của bạn.</p><a
                                                                class="btn btn-primary btn-hover-effect btn-sm f-w-500"
                                                                href="/source-code/list" wire:navigate> Mua Ngay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <img class="img-fluid pattern-image"
                                                    src="/assets/assets/images/dashboard/bg-1.png" alt="Nguyễn Thành">
                                            </div>
                                        </div>
                                        <div class="col-xl-12 box-col-12">
                                            <div class="card title-line upgrade-card overflow-hidden">
                                                <div class="row align-items-end">
                                                    <div class="col-sm-11 col-11">
                                                        <div class="card-header">

                                                            <h2> Dịch Vụ <span class="txt-danger"> Thiết Kế
                                                                    Website</span>
                                                            </h2>
                                                            <p class="mt-2 f-light"> Giải pháp hoàn hảo giúp bạn tiết
                                                                kiệm thời gian và chi phí phát triển phần mềm với mã
                                                                nguồn chất lượng, dễ dàng tùy chỉnh và tích hợp vào dự
                                                                án của bạn.</p><a
                                                                class="btn btn-primary btn-hover-effect btn-sm f-w-500"
                                                                href="/web-service/create" wire:navigate> Mua Ngay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <img class="img-fluid pattern-image"
                                                    src="/assets/assets/images/dashboard/bg-1.png" alt="Nguyễn Thành">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-xl-5 box-col-5">
                                    <div class="row">
                                        <div class="col-xl-12 box-col-12">
                                            @livewire('page.home.widget.account')
                                        </div>
                                        @if (auth()->check())
                                            <div class="col-xl-12">
                                                <div class="row tread-cards">
                                                    <div class="col-xl-6 col-sm-6">
                                                        <div class="card widget-1">
                                                            <div class="card-body common-box">
                                                                <div class="widget-icon primary widget-round">
                                                                    <svg>
                                                                        <use
                                                                            href="/assets/assets/svg/icon-sprite.svg#crown">
                                                                        </use>
                                                                    </svg>
                                                                </div>
                                                                <div>
                                                                    <h3 class="f-w-600">
                                                                        {{ number_format(auth()->user()->total_deposit, 0, ',', '.') }}<sup>đ</sup>
                                                                    </h3>
                                                                    <span class="f-w-500 f-light f-12"> Tổng Nạp </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xl-6 col-sm-6">
                                                        <div class="card widget-1">
                                                            <div class="card-body common-box">
                                                                <div class="widget-icon success widget-round">
                                                                    <svg>
                                                                        <use
                                                                            href="/assets/assets/svg/icon-sprite.svg#flash">
                                                                        </use>
                                                                    </svg>
                                                                </div>
                                                                <div>
                                                                    <h3 class="f-w-600">
                                                                        {{ number_format(auth()->user()->total_consumption, 0, ',', '.') }}<sup>đ</sup>
                                                                    </h3>
                                                                    <span class="f-w-500 f-light f-12"> Đã Sử Dụng
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-6 col-sm-6">
                                                        <div class="card widget-1">
                                                            <div class="card-body common-box">
                                                                <div class="widget-icon warning widget-round">
                                                                    <svg>
                                                                        <use
                                                                            href="/assets/assets/svg/icon-sprite.svg#blend-2">
                                                                        </use>
                                                                    </svg>
                                                                </div>
                                                                <div>
                                                                    <h3 class="f-w-600">
                                                                        {{ number_format(auth()->user()->balance, 0, ',', '.') }}<sup>đ</sup>
                                                                    </h3>
                                                                    <span class="f-w-500 f-light f-12"> Số Dư </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xl-6 col-sm-6">
                                                        <div class="card widget-1">
                                                            <div class="card-body common-box">
                                                                <div class="widget-icon secondary widget-round">
                                                                    <svg>
                                                                        <use
                                                                            href="/assets/assets/svg/icon-sprite.svg#color-filter">
                                                                        </use>
                                                                    </svg>
                                                                </div>
                                                                <div>
                                                                    <h3 class="f-w-600"> Thành Viên </h3>
                                                                    <span class="f-w-500 f-light f-12"> Cấp Bậc Tài
                                                                        Khoản </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-12 box-col-12">
                                                <div class="card title-line">
                                                    <div class="card-header card-no-border transaction-header">
                                                        <div class="header-top">
                                                            <h2> Thống Kê Dịch Vụ <span
                                                                    class="f-light f-12 d-block f-w-500"> Danh Sách
                                                                    Dịch Vụ
                                                                    Đang Sử Dụng </span></h2>
                                                        </div>
                                                    </div>

                                                    <div class="card-body pt-0 transaction-list">
                                                        <div class="row">
                                                            <div class="col-md-6 col-12" style="cursor: pointer;"
                                                                href="/source-code/list" wire:navigate>
                                                                <div class="card widget-1">
                                                                    <div class="card-body common-space order-card">
                                                                        <div> <span
                                                                                class="f-w-500 f-light txt-primary">Mã
                                                                                Nguồn </span>
                                                                            <h3> {{ $countSourceCodeOrder }} </h3>
                                                                            <div class="order-content"></div>
                                                                        </div>
                                                                        <button class="btn btn btn-sm"><i
                                                                                class="fa fa-angle-right txt-primary"
                                                                                style="font-size: 15px;"></i></button>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6 col-12" style="cursor: pointer;"
                                                                href="/smm/manager" wire:navigate>
                                                                <div class="card widget-1">
                                                                    <div class="card-body common-space order-card">
                                                                        <div> <span
                                                                                class="f-w-500 f-light txt-primary">Tăng
                                                                                Tương Tác </span>
                                                                            <h3> {{ $countSmmOrder }} </h3>
                                                                            <div class="order-content"></div>
                                                                        </div>
                                                                        <button class="btn btn btn-sm"><i
                                                                                class="fa fa-angle-right txt-primary"
                                                                                style="font-size: 15px;"></i></button>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif

                                    </div>
                                </div>
                                <div class="col-xl-3 box-col-3">
                                    <div class="row">

                                        <div class="col-xl-12 box-col-12">
                                            <div class="card title-line widget-1">
                                                <div class="card-header card-no-border">
                                                    <h2>Tiện Ích</h2>
                                                </div>
                                                <div class="card-body pt-0">
                                                    <div class="light-card satisfaction-box common-box">
                                                        <div class="widget-icon primary widget-round">
                                                            <svg>
                                                                <use
                                                                    href="/assets/assets/svg/icon-sprite.svg#like-shape">
                                                                </use>
                                                            </svg>
                                                        </div>
                                                        <div>
                                                            <h4>Tạo Mã QR Bank</h4><span
                                                                class="f-light f-w-500 f-12">lượt dùng (100)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body pt-0">
                                                    <div class="light-card satisfaction-box common-box">
                                                        <div class="widget-icon primary widget-round">
                                                            <svg>
                                                                <use
                                                                    href="/assets/assets/svg/icon-sprite.svg#like-shape">
                                                                </use>
                                                            </svg>
                                                        </div>
                                                        <div>
                                                            <h4>Kiểm Tra Domain</h4><span
                                                                class="f-light f-w-500 f-12">lượt dùng (100)</span>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href='https://www.free-counters.org/'>www.Free-Counters.org</a>
                        <script type='text/javascript'
                            src='https://www.freevisitorcounters.com/auth.php?id=edade5990080b86e1416a2cedeb15a986f449778'></script>
                        <script type="text/javascript" src="https://www.freevisitorcounters.com/en/home/counter/1279811/t/8"></script>
                        <script>
                            document.addEventListener('DOMContentLoaded', function() {
                                document.querySelectorAll('a[href="https://www.freevisitorcounters.com/en/home/stats/id/1279811"]')
                                    .forEach(function(link) {
                                        link.style.opacity = '0';
                                    });
                            });
                        </script>
                    </div>

                    @livewire('content.modal-home')
                    <script>
                        function close1h() {
                            localStorage.setItem('time_modal', '1731413273');
                            var modal = new bootstrap.Modal(document.getElementById('modalHome'));
                            modal.hide();
                        }

                        document.addEventListener("DOMContentLoaded", function() {
                            var modal = new bootstrap.Modal(document.getElementById('modalHome'));
                            if (localStorage.getItem('time_modal') < 1731409673) {
                                modal.show();
                            }
                        });
                    </script>


                    @livewire('inc.footer')

                </div>
            </div>
        </div>


        <input type="hidden" id="mn" value="0">



        <style>
            table tfoot tr {
                padding-bottom: 6px;
            }

            table tfoot tr td {
                padding-bottom: 6px;
            }
        </style>

    </body>



</div>
