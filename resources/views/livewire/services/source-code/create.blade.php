<div>


    <head>
        <title>Kho Mã Nguồn - GIANGTRAN.COM.VN</title>
    </head>

    <body id="content">
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="/logo/giangtran.webp" alt="AdminLTELogo" height="60" width="60">
        </div>
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Kho Mã Nguồn', 'description' => 'Kho mã nguồn của chúng tôi'])

                <div class="page-body-wrapper">


                    @livewire('inc.sidebar-wrapper')
                    <div class="page-body">
                        <div class="container-fluid product-wrapper">
                            @livewire('services.source-code.components.product-list')
                        </div>
                    </div>

                    <script></script>
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