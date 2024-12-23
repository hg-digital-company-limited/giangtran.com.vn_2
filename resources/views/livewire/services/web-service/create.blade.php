<div>

    <head>
        <title>Dịch Vụ Website - GIANGTRAN.COM.VN</title>
    </head>

    <body id="content">
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="/logo/giangtran.webp" alt="AdminLTELogo" height="60" width="60">
        </div>
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Dịch Vụ Website', 'description' => 'Danh Sách Dịch Vụ'])

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <div class="container-fluid product-wrapper">
                            <div class="product-grid">


                                <div class="product-wrapper-grid mt-3" style="opacity: 1;">
                                    <div class="row">

                                        <!--[if BLOCK]><![endif]-->
                                        @foreach ($webService as $item)
                                        <div class="col-xl-3 col-sm-6 xl-4">
                                            <div class="card">
                                                <div class="product-box">
                                                    <div class="product-img">

                                                        <img style=" object-fit: cover;   width: 100%; height: 300px;"
                                                            class="card-img-top"
                                                            src="{{Storage::url($item->image) }}"
                                                            alt="">

                                                    </div>

                                                    <div class="product-details">


                                                        <div class="row mt-2">
                                                            <div class="col-md-12 col-12">

                                                                {{ $item->name }}
                                                            </div>
                                                        </div>

                                                        <div class="row mt-2">


                                                            <div class="col-md-6 col-6">
                                                                <a class="badge badge-dark text-white"
                                                                    style="width: 100%; padding: 10px; cursor: pointer;"
                                                                    href="https://zalo.me/0966579217" target="_blank"> <i
                                                                        class="icofont icofont-cart"></i> Đăng Ký
                                                            </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                        <!--[if ENDBLOCK]><![endif]-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @livewire('inc.footer')
                </div>
            </div>
        </div>





    </body>

</div>
