<div>

    <head>
        @livewire('inc.seo', ['title' => $blog->title . ' - ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'description' => $blog->short_description, 'keywords' => 'Trang Tin Tức, ' . App\Helpers\SettingsHelper::getSetting('website_name'), 'image' => url(Storage::url($blog->image))])
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
                                <div class="col-sm-6">
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
