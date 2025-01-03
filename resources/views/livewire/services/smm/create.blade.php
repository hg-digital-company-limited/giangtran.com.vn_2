<div>

    <head>
        @livewire('inc.seo', ['title' => 'Tạo Đơn Tăng Tương Tác - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Tạo Đơn Tăng Tương Tác, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
        <style>
            li {
                padding-top: 5px;
            }
        </style>
        <style>
            table tfoot tr {
                padding-bottom: 6px;
            }

            table tfoot tr td {
                padding-bottom: 6px;
            }
        </style>
    </head>

    <body id="content">

        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Tạo Đơn Tăng Tương Tác', 'description' => 'Tạo đơn tăng tương tác cho dịch vụ của bạn'])

                <div class="page-body-wrapper">


                    @livewire('inc.sidebar-wrapper')


                    <div class="page-body">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-sm-12">

                                    <div class="">
                                        @livewire('services.smm.components.form')
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    @livewire('inc.footer')
                </div>
            </div>
        </div>


        <input type="hidden" id="mn" value="0">

    </body>

</div>
