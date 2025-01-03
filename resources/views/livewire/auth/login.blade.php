<div>

    <head>
        @livewire('inc.seo', ['title' => 'Đăng Nhập Tài Khoản - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Đăng Nhập Tài Khoản, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>
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
                                @livewire('auth.login.form')
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
