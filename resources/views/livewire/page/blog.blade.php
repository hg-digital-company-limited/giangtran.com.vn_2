<div>

    <head>
        @livewire('inc.seo', ['title' => 'Trang Tin Tức - ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'description' => App\Helpers\SettingsHelper::getSetting('website_description'), 'keywords' => 'Trang Tin Tức, ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
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
                                    <div class="card">
                                        <div class="blog-box blog-list row">
                                            <div class="col-sm-5"><img class="img-fluid sm-100-w"
                                                    src="https://admin.pixelstrap.net/yuri/assets/images/blog/blog.jpg" alt=""></div>
                                            <div class="col-sm-7">
                                                <div class="blog-details">
                                                    <div class="blog-date"><span>11</span> March 2024</div>
                                                    <h6>Stay ahead of the competition with our data-driven insights and
                                                        analytics.</h6>
                                                    <div class="blog-bottom-content">
                                                        <ul class="blog-social">
                                                            <li>by: Admin</li>
                                                            <li>0 Hits</li>
                                                        </ul>
                                                        <hr>
                                                        <p class="mt-0">Discover the hidden gems of our enchanting
                                                            visiting area, where nature's beauty meets captivating
                                                            history.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="blog-box blog-list row">
                                            <div class="col-sm-5"><img class="img-fluid sm-100-w"
                                                    src="https://admin.pixelstrap.net/yuri/assets/images/blog/blog-3.jpg" alt=""></div>
                                            <div class="col-sm-7">
                                                <div class="blog-details">
                                                    <div class="blog-date"><span>05</span> January 2024</div>
                                                    <h6>Mobile-ready and responsive - your website will shine on any
                                                        device</h6>
                                                    <div class="blog-bottom-content">
                                                        <ul class="blog-social">
                                                            <li>by: Admin</li>
                                                            <li>02 Hits</li>
                                                        </ul>
                                                        <hr>
                                                        <p class="mt-0">Embrace the charm and adventure that awaits
                                                            you in our vibrant visiting area, a destination like no
                                                            other</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xxl-3 box-col-6">
                                    <div class="card">
                                        <div class="blog-box blog-grid text-center"><img
                                                class="img-fluid top-radius-blog" src="https://admin.pixelstrap.net/yuri/assets/images/blog/blog-5.jpg"
                                                alt="">
                                            <div class="blog-details-main">
                                                <ul class="blog-social">
                                                    <li>2 May 2024</li>
                                                    <li>by: Admin</li>
                                                    <li>0 Hits</li>
                                                </ul>
                                                <hr>
                                                <h6 class="blog-bottom-details"> Unraveling the Elegance of Modern
                                                    Fashion Trends</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xxl-3 box-col-6">
                                    <div class="card">
                                        <div class="blog-box blog-grid text-center"><img
                                                class="img-fluid top-radius-blog" src="https://admin.pixelstrap.net/yuri/assets/images/blog/blog-6.jpg"
                                                alt="">
                                            <div class="blog-details-main">
                                                <ul class="blog-social">
                                                    <li>9 March 2024</li>
                                                    <li>by: Admin</li>
                                                    <li>0 Hits</li>
                                                </ul>
                                                <hr>
                                                <h6 class="blog-bottom-details">Navigating the Digital Frontier:
                                                    Insights into the World of Tech</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xxl-3 box-col-6">
                                    <div class="card">
                                        <div class="blog-box blog-grid text-center"><img
                                                class="img-fluid top-radius-blog" src="https://admin.pixelstrap.net/yuri/assets/images/blog/blog-5.jpg"
                                                alt="">
                                            <div class="blog-details-main">
                                                <ul class="blog-social">
                                                    <li>8 April 2024</li>
                                                    <li>by: Admin</li>
                                                    <li>0 Hits</li>
                                                </ul>
                                                <hr>
                                                <h6 class="blog-bottom-details">Wanderlust Chronicles: Exploring the
                                                    World, One Adventure at a Time</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xxl-3 box-col-6">
                                    <div class="card">
                                        <div class="blog-box blog-grid text-center"><img
                                                class="img-fluid top-radius-blog" src="https://admin.pixelstrap.net/yuri/assets/images/blog/blog-6.jpg"
                                                alt="">
                                            <div class="blog-details-main">
                                                <ul class="blog-social">
                                                    <li>5 July 2024</li>
                                                    <li>by: Admin</li>
                                                    <li>0 Hits</li>
                                                </ul>
                                                <hr>
                                                <h6 class="blog-bottom-details">Stronger Every Day: Empowering Your Body
                                                    and Mind for Success</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
