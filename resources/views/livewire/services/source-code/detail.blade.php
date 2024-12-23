<div>

    <head>
        <title>{{ $sourceCodeDetail->name }} - GIANGTRAN.COM.VN</title>

    </head>

    <body id="content">
          <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="/logo/giangtran.webp" alt="AdminLTELogo" height="60" width="60">
        </div>
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header')
                <div class="page-body-wrapper">


                    @livewire('inc.sidebar-wrapper')

                    <style>
                        li {
                            padding-top: 5px;
                        }
                    </style>

                    <div class="page-body">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-md-12">
                                    @livewire('services.source-code.components.form', ['id' => $sourceCodeDetail->id])
                                </div>

                                <div class="col-md-8">
                                    <div class="card card-body">
                                        <h4 class="mb-0">
                                            <i class="icofont icofont-console"></i> Mô Tả Chi Tiết
                                        </h4>

                                        <div class="mt-3">
                                            <div class="bg-light text-dark" style="border-radius: 8px; padding: 8px;">
                                                <h5>{{ $sourceCodeDetail->name }}</h5>
                                                <h5 class="mt-2"> Mã Số: [MS: #{{ $sourceCodeDetail->id }}]</h5>
                                            </div>

                                            <div id="content-gallery" class="mt-3"
                                                style="border-radius: 8px; padding: 8px;">
                                                {!! $sourceCodeDetail->description !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="card card-body">
                                        <h4 class="mb-0">
                                            <i class="icofont icofont-space"></i> Đề Xuất
                                        </h4>

                                        <div class="mt-3">
                                            <div class="row">
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a data-fancybox="gallery" href="https://i.imgur.com/HbwUH5l.png"
                                                        data-caption="<strong>Code web cho thuê cronjob ( Nạp Tiền tự Động ) Dùng Python</strong>">
                                                        <img src="https://i.imgur.com/HbwUH5l.png" class="img-fluid"
                                                            alt="Code web cho thuê cronjob ( Nạp Tiền tự Động ) Dùng Python"
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;" onclick="loadto('/mua-ma-nguon/3');">
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            Code web cho thuê cronjob ( Nạp Tiền tự Động ) Dùng Python
                                                        </h5>
                                                    </a>
                                                </div>
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a data-fancybox="gallery" href="https://i.imgur.com/x44RuuS.png"
                                                        data-caption="<strong>Code WHMCS 8.6.1 tích hợp nạp tự động ngân hàng tích hợp tiếng Việt.</strong>">
                                                        <img src="https://i.imgur.com/x44RuuS.png" class="img-fluid"
                                                            alt="Code WHMCS 8.6.1 tích hợp nạp tự động ngân hàng tích hợp tiếng Việt."
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;" onclick="loadto('/mua-ma-nguon/4');">
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            Code WHMCS 8.6.1 tích hợp nạp tự động ngân hàng tích hợp
                                                            tiếng Việt. </h5>
                                                    </a>
                                                </div>
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a data-fancybox="gallery" href="https://i.imgur.com/vqR9fO2.png"
                                                        data-caption="<strong>Code bán host Cpanel tự động (dailysieure WHM v3)</strong>">
                                                        <img src="https://i.imgur.com/vqR9fO2.png" class="img-fluid"
                                                            alt="Code bán host Cpanel tự động (dailysieure WHM v3)"
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;" onclick="loadto('/mua-ma-nguon/5');">
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            Code bán host Cpanel tự động (dailysieure WHM v3) </h5>
                                                    </a>
                                                </div>
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a data-fancybox="gallery" href="https://i.imgur.com/tWUq27G.png"
                                                        data-caption="<strong>Code Bán Mã Nguồn Viết Bằng ReactJs Cao Cấp </strong>">
                                                        <img src="https://i.imgur.com/tWUq27G.png" class="img-fluid"
                                                            alt="Code Bán Mã Nguồn Viết Bằng ReactJs Cao Cấp "
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;" onclick="loadto('/mua-ma-nguon/6');">
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            Code Bán Mã Nguồn Viết Bằng ReactJs Cao Cấp </h5>
                                                    </a>
                                                </div>
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a data-fancybox="gallery" href="https://i.imgur.com/n7g2Oru.png"
                                                        data-caption="<strong>Mã Nguồn Game Đa Dạng Full game H5 ( TRUNG QUỐC , CÒN ZIN )</strong>">
                                                        <img src="https://i.imgur.com/n7g2Oru.png" class="img-fluid"
                                                            alt="Mã Nguồn Game Đa Dạng Full game H5 ( TRUNG QUỐC , CÒN ZIN )"
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;" onclick="loadto('/mua-ma-nguon/7');">
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            Mã Nguồn Game Đa Dạng Full game H5 ( TRUNG QUỐC , CÒN ZIN )
                                                        </h5>
                                                    </a>
                                                </div>
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a data-fancybox="gallery"
                                                        href="https://sv1.anhsieuviet.com/2024/08/28/14629b47d318a988dea9ebb30168407c.png"
                                                        data-caption="<strong>Mã Nguồn Bán Hosting, Reseller, Tên Miền API Cyberlux.vn (Gốc)</strong>">
                                                        <img src="https://sv1.anhsieuviet.com/2024/08/28/14629b47d318a988dea9ebb30168407c.png"
                                                            class="img-fluid"
                                                            alt="Mã Nguồn Bán Hosting, Reseller, Tên Miền API Cyberlux.vn (Gốc)"
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;" onclick="loadto('/mua-ma-nguon/8');">
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            Mã Nguồn Bán Hosting, Reseller, Tên Miền API Cyberlux.vn
                                                            (Gốc) </h5>
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <script>
                        document.addEventListener("DOMContentLoaded", function() {
                            const galleryDiv = document.getElementById("content-gallery");
                            const images = galleryDiv.getElementsByTagName("img");

                            for (let i = 0; i < images.length; i++) {
                                const img = images[i];
                                const src = img.src;
                                const alt = img.alt;

                                const anchor = document.createElement("a");
                                anchor.setAttribute("data-fancybox", "gallery");
                                anchor.setAttribute("href", src);
                                anchor.setAttribute("data-caption", `<strong>${alt}</strong>`);

                                img.parentNode.insertBefore(anchor, img);
                                anchor.appendChild(img);

                                img.style.width = "100%";
                                img.style.height = "auto";
                            }
                        });
                    </script>


                    <script src="/assets/static/payment-code.js" defer></script>
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
