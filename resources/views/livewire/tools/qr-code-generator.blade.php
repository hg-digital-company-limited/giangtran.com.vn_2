<div>

    <head>
        @livewire('inc.seo', ['title' => 'Tạo QR Code - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Tạo QR Code, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>

    <body id="content">
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('loading_image'))) }}" alt="AdminLTELogo" height="60" width="60">
        </div>
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Tạo QR Code', 'description' => 'Tạo QR Code'])

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <div class="container-fluid default-dashboard">

                            <div class="col-xl-12">
                                <div class="card title-line">
                                    <div class="card-header">
                                        <h2 class="card-title mb-0"> Tạo QR Code </h2>

                                    </div>
                                    <div class="card-body">
                                    </div>
                                </div>
                            </div>

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
        </style>

    </body>

</div>