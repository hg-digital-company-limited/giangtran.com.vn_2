<div>

    <head>
        @livewire('inc.seo', ['title' => 'Quản Lý Mã Nguồn - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Quản Lý Mã Nguồn, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
    </head>

    <body id="content">
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('loading_image'))) }}" alt="AdminLTELogo" height="60" width="60">
        </div>
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header', ['title' => 'Quản Lý Dịch Vụ', 'description' => 'Quản Lý Mã Nguồn'])

                <div class="page-body-wrapper">

                    @livewire('inc.sidebar-wrapper')

                    <div class="page-body">
                        <div class="container-fluid default-dashboard">

                            <div class="col-xl-12">
                                <div class="card title-line">
                                    <div class="card-header">
                                        <h2 class="card-title mb-0"> Lịch Sử Mua Code </h2>

                                    </div>
                                    <div class="card-body">
                                        <div class="col-sm-12">
                                            <div class="table-responsive custom-scrollbar">
                                                <table class="display" id="basic-1">
                                                    <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>Tên Mã Nguồn</th>
                                                            <th>Giá Tiền</th>
                                                            <th>Thời Gian Mua</th>
                                                            <th>Trạng Thái</th>
                                                            <th>Hành Động</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @if(auth()->check())
                                                        @foreach ($sourceCodeOrders as $sourceCodeOrder)
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">#{{ $loop->iteration }}</td>
                                                                <td
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-width: 330px; max-width: 45px;">
                                                                    {{ $sourceCodeOrder->name }} </td>
                                                                <td>{{ number_format($sourceCodeOrder->unit_price, 0, ',', '.') }}
                                                                    VNĐ </td>
                                                                <td>{{ $sourceCodeOrder->created_at }}</td>
                                                                <td> <span class="badge badge-primary">
                                                                        {{ $sourceCodeOrder->payment_status == 'pending' ? 'Chờ Thanh Toán' : 'Đã Thanh Toán' }}
                                                                    </span> </td>
                                                                <td>
                                                                    <span
                                                                        onclick="window.open('{{ $sourceCodeOrder->link_download }}');"
                                                                        class="badge badge-dark"> <i
                                                                            class="icofont icofont-download"></i> Tải Về
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                        @endif
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

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
