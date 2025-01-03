<div>


    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta charset="utf-8">
        <title> Hóa Đơn #564229 </title>
        <link rel="icon" href="https://slopesoftware.com/wp-content/uploads/2021/12/cloud-servers.png"
            type="image/x-icon">
        <link rel="shortcut icon" href="https://slopesoftware.com/wp-content/uploads/2021/12/cloud-servers.png"
            type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
          {{-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> --}}
        <style>
            li {
                font-size: 14px;
            }

            body {
                background-color: #34855e;
            }
        </style>
    </head>

    <body class="d-flex align-items-center w-100 overflow-hidden min-h-100">
        <main class="w-100 p-4">
            <section class="container bg-white p-4 shadow-sm" style="border-radius: 3%; max-width: 480px;">
                <header class="mb-4 d-flex align-items-center">
                    <a href="/" class="d-flex align-items-center text-decoration-none">
                        <img class="me-2" src="https://slopesoftware.com/wp-content/uploads/2021/12/cloud-servers.png"
                            alt="" style="width: 45px; height: auto;">
                        <h1 class="h4 m-0 text-secondary">NIFY.VN</h1>
                    </a>
                </header>

                <main>
                    <span> Hóa Đơn #564229 </span><br>
                    <span> Trạng Thái: <b class="text-warning"> Chờ Thanh Toán </b> </span><br>


                    <p class="text-secondary mt-2">
                        Vui lòng thanh toán hóa đơn trước 18/11/2024 - 09:45:48, Nếu quá thời gian hóa đơn sẽ bị hủy.
                    </p>


                    <p class="text-secondary">
                        <strong> Thông Tin Thanh Toán:</strong>

                    <div class="form-group">
                        <select class="form-select" id="select-wallet" onchange="selectwallet();">
                            <option value="mbbank" selected>Ngân Hàng MB Bank</option>
                            <option value="dt1s">Ví DOITHE1S.VN</option>
                            <option value="tsr">Ví THESIEURE.COM</option>
                            <option value="dt">Ví DOITHE.VN</option>
                        </select>
                    </div>

                    <div class="row mt-4" style="display: flex; justify-content: space-between;">
                        <div class="col-md-6 col-6">
                            <div style="margin-top: -10px; font-size: 14px;">
                                <span> Số Tài Khoản: 127969999 </span><br>
                                <span> Chủ TK: <b>NGUYEN HUU THANH</b> </span> <br>
                                <span> Nội Dung CK: <b>TT564229</b> </span><br>
                                <span> Cần Thanh Toán: 12,000<sup>đ</sup> </span><br>
                                <span> Nhận Tối Thiểu: 0<sup>đ</sup></span><br>
                            </div>
                        </div>

                        <div class="col-md-6 col-6 " style="display: flex; justify-content: flex-end;">
                            <img class="d-none d-md-block"
                                src="https://api.vietqr.io/mb/127969999/0/TT564229/vietqr_net_2.jpg?accountName=NGUYEN+HUU+THANH"
                                id="qr-cid" style="width: 60%; height: auto; margin-top: -20px;" alt="">
                            <img class="d-block d-md-none"
                                src="https://api.vietqr.io/mb/127969999/0/TT564229/vietqr_net_2.jpg?accountName=NGUYEN+HUU+THANH"
                                id="qr-cid" style="width: 100%; height: auto; margin-top: -20px;" alt="">
                        </div>
                    </div>

                    </p>


                    <p class="text-secondary">
                        <strong>Chi Tiết Hóa Đơn:</strong>
                    <div style="margin-top: -10px; font-size: 14px;">
                        <span>- Mã Số Hóa Đơn: #564229</span><br>
                        <span>- Loại Hóa Đơn: Đăng Ký Dịch Vụ </span><br>
                        <span
                            style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: inline-block;">-
                            Dịch Vụ: VIETNAM #STARTUP (18/11/2024 - 09:30:27 - 17/01/2025 - 09:30:27) </span><br>
                        <span>- Thời Gian Lập Hóa Đơn: 18/11/2024 - 09:30:27 </span><br>
                        <span>- Số Tiền: 12,000<sup>đ</sup> </span><br>
                        <span>- Hạn Thanh Toán: 18/11/2024 - 09:45:27 </span><br>
                    </div>
                    </p>
                </main>


                <footer class="mt-3">
                    <p class="text-secondary" style="font-size: 14px;">
                        Hướng dẫn: Chuyển khoản đúng nội dung và thông tin ngân hàng, hóa đơn sẽ tự động xử lí trong 1-3
                        phút sau khi bạn thanh toán!
                    </p>
                </footer>

            </section>
        </main>

        <script>
            function selectwallet(){
                var bank = $("#select-wallet").val();
                changeWallet(bank, '208');            
            }
            
                    
            realTime({ orderId: '564229' });
            
            function realTime(data) {
                axios.get('/axios/payment-check', {
                    params: data
                })
                .then(response => {
                    if(response.data.status == 'success'){
                        swal('Thông Báo',response.data.message,response.data.status);
                        setTimeout(() => {
                            loadto('');
                        }, 1000);
                    } else if(response.data.status == 'error') {
                        setTimeout(() => {
                            loadto('');
                        }, 1000);
                    } else {
                        if(response.status == 200){
                            setTimeout(() => {
                                realTime({ orderId: data.orderId });
                            }, 3000);
                        }
                    }
                })
            }
            
                    
        </script>
        <script src="/assets/static/cyberlux.js" defer></script>
        <script src="/assets/static/wallet.js?v=1678586054" defer></script>
        <script src="/assets/static/jquery.min.js" defer></script>
    </body>
</div>