<div>

    <head>
        @livewire('inc.seo', ['title' => 'Tạo QR Code - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Tạo QR Code, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>

    <body id="content">

        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Tạo QR Code', 'description' => 'Tạo QR Code'])

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <div class="container-fluid default-dashboard">
                            @livewire('tools.qr-code-generator.form')

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
