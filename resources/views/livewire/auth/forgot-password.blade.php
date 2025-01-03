<div>
    <head>
     @livewire('inc.seo', ['title' => 'Đặt Lại Mật Khẩu - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
     'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
      'keywords' => 'Đặt Lại Mật Khẩu, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
      'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])

    </head>
    <body id="content">

        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>
            <div class="container-fluid p-0">
                <div class="row m-0">
                    <div class="col-12 p-0">
                        <div class="login-card login-dark"
                            style="background: url(/assets/assets/images/customizer/c540018ca1c7b93cb1fbc218ea0c73a7.png); background-size: cover; background-repeat: no-repeat;">
                            <div>
                                <div class="login-main">
                                    <a href="/" >
                                        <center><img src="/logo/giangtran.webp" style="max-width: 100%; height: 35px;"></center>
                                    </a>

                                    <div class="theme-form mt-3">

                                        <div style="display: block;" id="get-send-otp">
                                            <center>
                                                <h2> Đặt Lại Mật Khẩu </h2>
                                            </center>

                                            <div class="form-group">
                                                <label class="col-form-label"> Email Khôi Phục </label>
                                             @livewire('auth.forgot-password.form')
                                            </div>


                                            <div class="form-group" id="otpShow" style="display: none;">
                                                <label class="col-form-label"> Mã OTP </label>
                                                <input class="form-control" type="number" id="otp_new"
                                                    placeholder="Mã Gồm 6 Chữ Số" style="background-color: white;"
                                                    autocomplete="new-password" onchange="getOTPInoput()" value="">
                                            </div>

                                            <div class="mt-2 text-danger" style="font-size: 12px;" id="default-text"> Hướng
                                                Dẫn: Nhập Chính Xác Email Tài Khoản Của Bạn, Sau Khi Nhập Xong Hệ Thống Sẽ
                                                Tự Gửi Một Email Đến Bạn! </div>
                                            <div class="mt-4 mb-4" id="btn-resendText" style="display: none;"><span
                                                    class="reset-password-link"> Chưa Nhận Được Mã OTP? <a
                                                        class="btn-link txt-danger" onclick="resendOTP()" id="icon-resend">
                                                        Gửi Lại </a></span></div>
                                        </div>

                                        <div id="create-new-password" style="display: none;">
                                            <h4 class="mt-4"> Tạo Mật Khẩu Mới </h4>

                                            <div class="form-group">
                                                <label class="col-form-label"> Mật Khẩu Mới </label>
                                                <div class="form-input position-relative">
                                                    <input class="form-control" type="password" name="login[password]"
                                                        id="new-password" placeholder="*********">
                                                    <div class="show-hide"><span class="show"></span></div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-form-label"> Nhập Lại Mật Khẩu Mới </label>
                                                <div class="form-input position-relative">
                                                    <input class="form-control" type="password" name="login[password]"
                                                        id="cofirm-password" placeholder="*********">
                                                    <div class="show-hide"><span class="show"></span></div>
                                                </div>
                                            </div>

                                            <div class="form-group mb-0">
                                                <button class="btn btn-primary btn-block w-100" id="create_new_password"
                                                    onclick="create_new_password();"> Xác Nhận </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <style>
                    @media only screen and (max-width: 456px) {
                        .login-card .login-main {
                            width: 390px;
                            padding: 20px;
                        }
                    }

                    @media only screen and (max-width: 400px) {
                        .login-card .login-main {
                            width: auto;
                            padding: 20px;
                        }
                    }
                </style>
            </div>
        </div>
    </body>
    <script>
        $(".loader-wrapper").fadeOut("slow", function() {
            $(this).remove();
        });
    </script>
</div>
