<div>

    <head>
        <title>Kết Nối Api - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>
        <meta name="description" content="Kết Nối Api - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}">
        @livewire('inc.seo', [
         'keywords' => 'Kết Nối Api, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])

</head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <body id="content">



        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Kết Nối Api (Đang phát triển)', 'description' => 'Kết Nối Api'])
                <div class="page-body-wrapper">


                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <div class="container-fluid default-dashboard">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <div class="card title-line">
                                            <div class="card-header card-no-border">
                                                <h2> Thông Tin Tích Hợp API </h2>
                                                <span class="f-w-500 f-12 f-light mt-0"> Vui Lòng Không Để Lộ APIKEY Tránh Mất Tiền. </span>
                                            </div>
                                            <div class="card-body" style="margin-top: -20px;">
                                                <div class="col-md-12 col-12">
                                                    <div class="form-group">
                                                        <div class="input-group mb-2">
                                                            <div class="form-control" id="apikey" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: inline-block;">Tài Khoản Chưa Kích Hoạt API.</div>
                                                            <button class="btn btn-primary" onclick="copyText('Tài Khoản Chưa Kích Hoạt API.');">
                                            <i class="icofont icofont-ui-copy"></i>
                                        </button>
                                                        </div>
                                                    </div>

                                                    <b class="txt-danger" style="font-size: 10px;"> 💡 Nếu Bạn Cần Thay Đổi APIKEY Hãy Đổi Mật Khẩu Để Đổi APIKEY. </b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <div class="card title-line">
                                            <div class="card-header card-no-border">
                                                <h2> Ghi Chú </h2>
                                                <span class="f-w-500 f-12 f-light mt-0"> Một Số Lưu Ý Và Hướng Dẫn Nhanh, Bạn Nên Đọc! </span>
                                            </div>
                                            <div class="card-body pt-0">
                                                <p>Nếu T&agrave;i Khoản Chưa K&iacute;ch Hoạt API H&atilde;y Đổi Mật Khẩu T&agrave;i Khoản Để Được K&iacute;ch Hoạt API Nh&eacute;.</p>

                                                <p>Kĩ Thuật Vi&ecirc;n Nhận T&iacute;ch Hợp C&aacute;c API V&agrave;o M&atilde; Nguồn Của Bạn Nếu Bạn Kh&ocirc;ng Biết Về Lập Tr&igrave;nh, H&atilde;y Li&ecirc;n Hệ Qua Fanpage Nếu Cần Nh&eacute;.</p>

                                                <p><strong>T&agrave;i Liệu Kết Nối: </strong><a href="" target="_blank">Tại Đ&acirc;y</a></p>

                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-12">
                                    <div class="card title-line">
                                        <div class="card-header">
                                            <h2 class="card-title mb-0"> Lịch Sử Thanh Toán (API) </h2>
                                        </div>
                                        <div class="card-body">
                                            <div class="col-sm-12">
                                                <div class="table-responsive custom-scrollbar">
                                                    <table class="display" id="basic-1">
                                                        <thead>
                                                            <tr>
                                                                <th> ID </th>
                                                                <th> Chi Tiết </th>
                                                                <th> IP </th>
                                                                <th> WebAPI </th>
                                                                <th> Giá Tiền </th>
                                                                <th> Thời Gian </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="datatable">
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
