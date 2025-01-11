<div>

    <head>
        <title>{{ $blog->title }} - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>
        <meta name="description" content="{{ $blog->short_description }}">
        @livewire('inc.seo', [   'keywords' => $blog->title . ', ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'image' => url(Storage::url($blog->image))])
    </head>

    <body id="content">
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Chi tiết tin tức', 'description' => $blog->title])

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <!-- Container-fluid starts-->
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-12 col-lg-8">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="blog-single">
                                                <div class="blog-box blog-details"><img class="img-fluid w-100"
                                                        src="{{ Storage::url($blog->image) }}" alt="blog-main">
                                                    <div class="blog-details">
                                                        <ul class="blog-social">
                                                            <li>{{ $blog->created_at->format('d F Y') }}</li>
                                                            <li><i class="icofont icofont-eye"></i>{{ $blog->views }}
                                                                Views</li>
                                                        </ul>
                                                        <h4>{{ $blog->title }}</h4>
                                                        <div class="single-blog-content-top">
                                                            {!! $blog->description !!}
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                                            </p> <a class="btn btn-primary btn-hover-effect btn-sm f-w-500" href="/smm/create"> Mua Ngay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <img class="img-fluid pattern-image" src="/assets/assets/images/dashboard/bg-1.png" alt="Nguyễn Thành">
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
                                                                án của bạn.</p><a class="btn btn-primary btn-hover-effect btn-sm f-w-500" href="/source-code/list" wire:navigate=""> Mua Ngay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <img class="img-fluid pattern-image" src="/assets/assets/images/dashboard/bg-1.png" alt="Nguyễn Thành">
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
                                                                án của bạn.</p><a class="btn btn-primary btn-hover-effect btn-sm f-w-500" href="/web-service/create" wire:navigate=""> Mua Ngay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <img class="img-fluid pattern-image" src="/assets/assets/images/dashboard/bg-1.png" alt="Nguyễn Thành">
                                            </div>
                                        </div>
                                        <div class="col-xl-12 box-col-12" style="margin-top: -10px;">
                                            <div class="offer-banner" style="background-image: url(/assets/assets/images/bg-affilate.png);">
                                                <div class="offer-content">
                                                    <h2> Mã nguồn Wordrpress Chỉ 20k </h2>
                                                    <p class="f-w-500 f-12"> Tổng cộng 650 theme! </p>
                                                    <a href="/source-code/list/334/" wire:navigate="" class="btn btn-dark btn-sm"> Mua Ngay </a>
                                                </div><img class="img-fluid" src="/assets/assets/images/cyberlux/developer-4268348-3560991.png" alt="vector" loading="lazy">
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Container-fluid Ends-->
                        </div>
                    </div>
                        @livewire('inc.footer')
                    </div>
                </div>
            </div>



            <style>
                table tfoot tr {
                    padding-bottom: 6px;
                }

                table tfoot tr td {
                    padding-bottom: 6px;
                }
                .blog-details img {
                    width: 100%;
                    height: inherit;
                }
                .blog-details {
                    font-family: 'Inter', sans-serif !important;
                    font-weight: inherit !important;
                }
                .blog-details strong {
                    font-weight: inherit !important;
                }
            </style>

    </body>

</div>
