<div>

    <head>
        @livewire('inc.seo', ['title' => 'Thông Tin Tài Khoản - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Thông Tin Tài Khoản, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>


    </head>

    <body id="content">


        <div class="tap-top"><i data-feather="chevrons-up"></i></div>

        <div class="page-wrapper compact-wrapper" id="pageWrapper">
            @livewire('inc.header')

            <div class="page-body-wrapper">

                @livewire('inc.sidebar-wrapper')



                <div class="page-body">
                    <div class="container-fluid default-dashboard">
                        @livewire('page.profile.form')
                    </div>
                </div>


                @livewire('inc.footer')
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
