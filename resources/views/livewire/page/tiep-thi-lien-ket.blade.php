<div>

    <head>
        <title>Tiếp Thị Liên Kết - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>
        <meta name="description" content="Tiếp Thị Liên Kết - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}">
        @livewire('inc.seo', ['keywords' => 'Tiếp Thị Liên Kết, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'keywords' => 'Tiếp Thị Liên Kết, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    </head>

    <body id="content">



        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Tiếp Thị Liên Kết (Đang phát triển)', 'description' => 'Tiếp Thị Liên Kết'])

                <div class="page-body-wrapper">


                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <div class="container-fluid default-dashboard">
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="col-md-12 box-col-12">
                                        <div class="card title-line">
                                            <div class="card-header card-no-border transaction-header">
                                                <div class="header-top">
                                                    <h2> Liên Kết & Hướng Dẫn </span>
                                                    </h2>
                                                </div>
                                            </div>

                                            <div class="card-body pt-0 transaction-list">
                                                <div class="form-group">
                                                    <label>Liên Kết Của Bạn:</label>
                                                    <div class="input-group">
                                                        <div class="form-control" id="link-to-copy" readonly>
                                                            {{url('/')}}/ref/{{auth()->user()->username}} </div>
                                                        <div class="input-group-append">
                                                            <button class="btn btn-default" onclick="copyText('{{url('/')}}/ref/{{auth()->user()->username}}')" type="button">
                                        <i class="icofont icofont-copy-alt"></i>
                                    </button>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mt-3">
                                                    <b> Hướng Dẫn & Chú Ý </b><br>
                                                    <p>Hoa Hồng Sẽ Được T&iacute;nh Khi Người Được Bạn Mời Nạp Tiền Qua Bất Kỳ Phương Thức N&agrave;o.</p>

                                                    <p>Nếu Hệ Thống Ph&aacute;t Hiện Bạn D&ugrave;ng T&agrave;i Khoản Kh&aacute;c Để Tự Mời Sẽ Bị Chặn T&agrave;i Khoản &amp; Kh&ocirc;ng Xử L&iacute; R&uacute;t Tiền</p>

                                                    <p>Hoa Hồng Sẽ Được T&iacute;nh Vĩnh Viễn</p>

                                                    <p>Xử L&iacute; Đơn R&uacute;t Tiền Trong 24 Giờ L&agrave;m Việc</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12 box-col-12 d-block d-md-none">
                                        <div class="card title-line">
                                            <div class="card-header card-no-border transaction-header">
                                                <div class="header-top">
                                                    <h2> Thống Kê </span>
                                                    </h2>
                                                </div>
                                            </div>

                                            <div class="card-body pt-0 transaction-list">
                                                <span> Số Dư Hoa Hồng: </span><br>
                                                <b class="txt-danger" style="font-size: 16px;"> 0<sup>đ</sup> </b>

                                                <div class="row mt-3">
                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Tỷ Lệ Hoa Hồng: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 30% </b>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Lượt Truy Cập: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 0 </b>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Tổng Hoa Hồng Đã Nhận: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 0<sup>đ</sup>  </b>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Thành Viên: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 0 </b>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12 box-col-12 d-none d-md-block">
                                        <div class="card title-line">
                                            <div class="card-header">
                                                <h4 class="card-title mb-0"> Lịch Sử Hoa Hồng </h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="col-sm-12">
                                                    <div class="table-responsive custom-scrollbar">
                                                        <table class="display" id="basic-1">
                                                            <thead>
                                                                <tr>
                                                                    <th> STT </th>
                                                                    <th> Thành Viên </th>
                                                                    <th> Số Dư Trước </th>
                                                                    <th> Mệnh Giá </th>
                                                                    <th> Số Dư Sau </th>
                                                                    <th> Thời Gian </th>
                                                                    <th> Ghi Chú </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="col-md-12 box-col-12 d-none d-md-block">
                                        <div class="card title-line">
                                            <div class="card-header card-no-border transaction-header">
                                                <div class="header-top">
                                                    <h2> Thống Kê </span>
                                                    </h2>
                                                </div>
                                            </div>

                                            <div class="card-body pt-0 transaction-list">
                                                <span> Số Dư Hoa Hồng: </span><br>
                                                <b class="txt-danger" style="font-size: 16px;"> 0<sup>đ</sup> </b>

                                                <div class="row mt-3">
                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Tỷ Lệ Hoa Hồng: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 30% </b>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Lượt Truy Cập: </span>
                                                            <b class="txt-primary" style="font-size: 16px;">    0 </b>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Tổng Hoa Hồng Đã Nhận: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 0<sup>đ</sup>  </b>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-6">
                                                        <div class="card card-body bg-dark">
                                                            <span> Thành Viên: </span>
                                                            <b class="txt-primary" style="font-size: 16px;"> 0 </b>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12 box-col-12 d-block d-md-none">
                                        <div class="card title-line">
                                            <div class="card-header">
                                                <h4 class="card-title mb-0"> Lịch Sử Hoa Hồng </h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="col-sm-12">
                                                    <div class="table-responsive custom-scrollbar">
                                                        <table class="display" id="basic-2">
                                                            <thead>
                                                                <tr>
                                                                    <th> STT </th>
                                                                    <th> Thành Viên </th>
                                                                    <th> Số Dư Trước </th>
                                                                    <th> Mệnh Giá </th>
                                                                    <th> Số Dư Sau </th>
                                                                    <th> Thời Gian </th>
                                                                    <th> Ghi Chú </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12 box-col-12">
                                        <div class="card title-line">
                                            <div class="card-header">
                                                <h4 class="card-title mb-0"> Thành Viên Đã Mời </h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="col-sm-12">
                                                    <div class="table-responsive custom-scrollbar">
                                                        <table class="display" id="basic-3">
                                                            <thead>
                                                                <tr>
                                                                    <th> STT </th>
                                                                    <th> Tài Khoản </th>
                                                                    <th> Thời Gian Đăng Ký </th>
                                                                    <th> Hoa Hồng </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="modal fade" id="showqr-code" aria-hidden="true" aria-labelledby="exampleModalToggle2"
                        tabindex="-1">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div class="modal-toggle-wrapper">
                                        <ul class="modal-img">
                                            <li>
                                                <center><img src="" id="qr-cid"
                                                        style="width: 70%; height: auto;" alt=""></center>
                                            </li>
                                        </ul>

                                        <span class="text-center mt-3">Sử dụng App MoMo hoặc ứng dụng Camera hỗ trợ QR
                                            code để quét mã.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script>
                        function showQRcode(img) {
                            $("#qr-cid").attr("src", img);
                        }
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
