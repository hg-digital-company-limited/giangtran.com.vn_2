<div>

    <head>
        <title>Trang Tin Tức - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>
        <meta name="description" content="Trang Tin Tức - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}">
        @livewire('inc.seo', ['keywords' => 'Trang Tin Tức, ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>

    <body id="content">

        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Trang Tin Tức', 'description' => 'Trang Tin Tức'])

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <!-- Container-fluid starts-->
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-6 set-col-12 box-col-12">

                                    <div class="card" onclick="window.location.href='/blog/{{  $blog1->slug }}'" style="cursor: pointer;">
                                        <div class="blog-box blog-shadow"><img class="img-fluid"
                                                src="{{ Storage::url($blog1->image) }}" alt="" width="100%">
                                            <div class="blog-details">
                                                <p>{{ $blog1->created_at->format('d F Y') }}</p>
                                                <h4>{{ $blog1->title }}</h4>
                                                <ul class="blog-social">
                                                    <li><i class="icofont icofont-eye"></i>{{ $blog1->views }} Views</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 set-col-12 box-col-12">
                                    <div class="card" onclick="window.location.href='/blog/{{  $blog2->slug }}'" style="cursor: pointer;">
                                        <div class="blog-box blog-list row">
                                            <div class="col-sm-5"><img class="img-fluid sm-100-w"
                                                    src="{{ Storage::url($blog2->image) }}" alt=""></div>
                                            <div class="col-sm-7">
                                                <div class="blog-details">
                                                    <p>{{ $blog2->created_at->format('d F Y') }}</p>
                                                    <h6>{{ $blog2->title }}</h6>
                                                    <div class="blog-bottom-content">
                                                        <ul class="blog-social">
                                                            <li>{{ $blog2->views }} Views</li>
                                                        </ul>
                                                        <hr>
                                                        <p class="mt-0">{{ $blog2->short_description }}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @if ($blog3)
                                    <div class="card" onclick="window.location.href='/blog/{{  $blog3->slug }}'" style="cursor: pointer;">
                                        <div class="blog-box blog-list row">
                                            <div class="col-sm-5"><img class="img-fluid sm-100-w"
                                                    src="{{ Storage::url($blog3->image) }}" alt=""></div>
                                            <div class="col-sm-7">
                                                <div class="blog-details">
                                                    <p>{{ $blog3->created_at->format('d F Y') }}</p>
                                                    <h6>{{ $blog3->title }}</h6>
                                                    <div class="blog-bottom-content">
                                                        <ul class="blog-social">
                                                            <li>{{ $blog3->views }} Views</li>
                                                        </ul>
                                                        <hr>
                                                        <p class="mt-0">{{ $blog3->short_description }}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                </div>
                                @foreach ($blogs as $blog)
                                <div class="col-md-6 col-xxl-3 box-col-6">
                                    <div class="card" onclick="window.location.href='/blog/{{  $blog->slug }}'" style="cursor: pointer;">
                                        <div class="blog-box blog-grid text-center"><img
                                                class="img-fluid top-radius-blog" src="{{ Storage::url($blog->image) }}"
                                                alt="">
                                            <div class="blog-details-main">
                                                <ul class="blog-social">
                                                    <li>{{ $blog->created_at->format('d F Y') }}</li>
                                                    <li>{{ $blog->views }} Views</li>
                                                </ul>
                                                <hr>
                                                <h6 class="blog-bottom-details">{{ $blog->title }}</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach

                            </div>
                        </div>
                        <!-- Container-fluid Ends-->
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
        </style>

    </body>

</div>
