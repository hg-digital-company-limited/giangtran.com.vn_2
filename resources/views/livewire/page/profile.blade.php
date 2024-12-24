<div>

    <head>
        <title>Thông Tin Tài Khoản - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>



    </head>

    <body id="content">
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('loading_image'))) }}" alt="AdminLTELogo" height="60" width="60">
        </div>

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
