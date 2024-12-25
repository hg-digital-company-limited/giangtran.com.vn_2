<div>

    <head>
        @livewire('inc.seo', ['title' => 'Bảo Trì - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Bảo Trì, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
        <!-- Google font-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&amp;family=Nunito+Sans:ital,wght@0,300;0,400;0,700;0,800;0,900;1,700&amp;display=swap"
            rel="stylesheet">
        <!-- Font Awesome-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/font-awesome.css">
        <!-- ico-font-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/vendors/icofont.css">
        <!-- Themify icon-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/vendors/themify.css">
        <!-- Flag icon-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/vendors/flag-icon.css">
        <!-- Feather icon-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/vendors/feather-icon.css">
        <!-- Plugins css start-->
        <!-- Plugins css Ends-->
        <!-- Bootstrap css-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/vendors/bootstrap.css">
        <!-- App css-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/style.css">
        <!-- Responsive css-->
        <link rel="stylesheet" type="text/css" href="/assets_maintenance/css/responsive.css">
    </head>

    <body>
        <!-- tap on top starts-->
        <div class="tap-top"><i data-feather="chevrons-up"></i></div>
        <!-- tap on tap ends-->
        <!-- page-wrapper Start-->
        <div class="page-wrapper compact-wrapper" id="pageWrapper">
            <!-- Page Body Start-->
            <div class="container-fluid p-0 m-0">
                <div class="comingsoon comingsoon-bgimg">
                    <div class="comingsoon-inner text-center"><img
                            src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('logo'))) }}" alt="logo"
                            style="width: 50vw; height: initial;">
                        <h5>WEBSITE ĐANG TRONG QUÁ TRÌNH BẢO TRÌ</h5>
                        <div class="countdown" id="clock-arrival" data-hours="1" data-minutes="2" data-seconds="3"
                            data-days="19">
                            <ul>
                                <li><span class="days time"></span><span class="title">ngày</span></li>
                                <li><span class="hours time"></span><span class="title">giờ</span></li>
                                <li><span class="minutes time"></span><span class="title">phút</span></li>
                                <li><span class="seconds time"></span><span class="title">giây</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- latest jquery-->
        <script src="/assets_maintenance/js/jquery.min.js"></script>
        <!-- Bootstrap js-->
        <script src="/assets_maintenance/js/bootstrap/bootstrap.bundle.min.js"></script>
        <!-- feather icon js-->
        <script src="/assets_maintenance/js/icons/feather-icon/feather.min.js"></script>
        <script src="/assets_maintenance/js/icons/feather-icon/feather-icon.js"></script>
        <!-- scrollbar js-->
        <!-- Sidebar jquery-->
        <script src="/assets_maintenance/js/config.js"></script>
        <!-- Plugins JS start-->
        <script>
            var deadline = new Date(Date.parse("{{ \App\Helpers\SettingsHelper::getSetting('deadline') }}"));
        </script>
        <script src="/assets_maintenance/js/countdown.js"></script>
        <!-- Plugins JS Ends-->
        <!-- Theme js-->
        <script src="/assets_maintenance/js/script.js"></script>
    </body>
</div>
