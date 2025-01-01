<div class="sidebar-wrapper" data-sidebar-layout="stroke-svg">
    <div>
        <div class="logo-wrapper"><a href="/" wire:navigate><img loading="lazy" class="img-fluid"
                    src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('logo'))) }}" style="height: 40px;"
                    alt=""></a>
            <div class="back-btn"><i class="fa fa-angle-left"></i></div>
            <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
        </div>
        <div class="logo-icon-wrapper"><a href="/" wire:navigate><img loading="lazy" style="border-radius: 10px;"
                    class="img-fluid" src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('avatar'))) }}"
                    width="35px;" alt=""></a></div>
        <div class="profile-section sidebar-search">


            <div class="profile-wrapper">
                <div class="active-profile"> <img loading="lazy" style="border-radius: 10px;" class="img-fluid"
                        src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('avatar'))) }}" alt="user">
                    <div class="status bg-success"> </div>
                </div>
                <div>
                    <h4> {{ $name }} </h4><span> Số Dư:
                        {{ App\Helpers\FormatHelper::formatCurrency($balance) }}
                        <sup>đ</sup> </span>
                </div>
            </div>

            <div>
                <a href="/profile" wire:navigate>
                    <svg>
                        <use href="/assets/assets/svg/icon-sprite.svg#profile-setting"></use>
                    </svg>
                </a>
            </div>


        </div>

        <div class="sidebar-search">
            <div class="input-group"><span class="input-group-text" id="sidebar-search">
                    <svg>
                        <use href="/assets/assets/svg/icon-sprite.svg#search"></use>
                    </svg></span>
                <input class="form-control" type="text" placeholder="Tìm Kiếm" aria-label="search"
                    aria-describedby="sidebar-search">
            </div>
        </div>

        <nav class="sidebar-main">
            <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
            <div id="sidebar-menu">
                <ul class="sidebar-links" id="simple-bar">
                    <li class="back-btn"><a href="/" wire:navigate><img loading="lazy"
                                style="border-radius: 10px;" class="img-fluid"
                                src="{{ url(Storage::url(App\Helpers\SettingsHelper::getSetting('avatar'))) }}"
                                width="35px;" alt=""></a>
                        <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2"
                                aria-hidden="true"></i></div>
                    </li>
                    <li class="pin-title sidebar-main-title">
                        <div>
                            <h6>- Pinned</h6>
                        </div>
                    </li>
                    <li class="sidebar-main-title">
                        <div>
                            <h6 class="lan-8">- General</h6>
                        </div>
                    </li>
                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" id="homeHref" wire:navigate href="/">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-home"></use>
                            </svg>
                            <span> Trang Chủ </span>
                        </a>
                    </li>

                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" wire:navigate href="/profile">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-widget"></use>
                            </svg>
                            <span> Thông Tin Tài Khoản </span>
                        </a>
                    </li>

                    <li class="sidebar-main-title">
                        <div>
                            <h6 class="lan-8">- SERVICES</h6>
                        </div>
                    </li>
                    <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title"
                            href="#">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-social"></use>
                            </svg>

                            <span class="lan-6"> Tăng Tương Tác </span></a>
                        <ul class="sidebar-submenu">



                            <li><a href="/smm/create"> Danh sách dịch vụ </a></li>



                            <li><a wire:navigate href="/smm/manager"> Quản Lý </a></li>



                        </ul>
                    </li>
                    <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title"
                            href="#">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-social"></use>
                            </svg>

                            <span class="lan-6"> Mã Nguồn </span></a>
                        <ul class="sidebar-submenu">



                            <li><a wire:navigate href="/source-code/list"> Danh sách mã nguồn </a></li>



                            <li><a wire:navigate href="/source-code/manager"> Quản Lý </a></li>



                        </ul>
                    </li>


                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" wire:navigate href="/web-service/create">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-starter-kit"></use>
                            </svg>
                            <span> Dịch Vụ Website </span>
                        </a>
                    </li>
                    <li class="sidebar-main-title">
                        <div>
                            <h6 class="lan-8">- OTHERS</h6>
                        </div>
                    </li>
                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" wire:navigate href="/chuyen-khoan">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-ecommerce"></use>
                            </svg>
                            <span> Nạp Tiền </span>
                        </a>
                    </li>
                    <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title"
                            href="#">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-ecommerce"></use>
                            </svg>

                            <span class="lan-6"> Tiếp Thị Liên Kết </span></a>
                        <ul class="sidebar-submenu">



                            <li><a wire:navigate href="/tiep-thi-lien-ket"> Thống Kê </a></li>



                            <li><a wire:navigate href="/rut-tien"> Rút Tiền </a></li>



                        </ul>
                    </li>
                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" wire:navigate href="/api-client">
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-faq"></use>
                            </svg>
                            <span> Kết Nối Api </span>
                        </a>
                    </li>
                    <li class="sidebar-main-title">
                        <div>
                            <h6 class="lan-8">- Tools</h6>
                        </div>
                    </li>

                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" href="/tools/qr-code-generator" wire:navigate>
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-knowledgebase"></use>
                            </svg>
                            <span> Tạo QR Code </span>
                        </a>
                    </li>
                    <li class="sidebar-list">
                        <i class="fa fa-thumb-tack"></i>
                        <a class="sidebar-link sidebar-title link-nav" href="/tools/check-domain" wire:navigate>
                            <svg class="stroke-icon">
                                <use href="/assets/assets/svg/icon-sprite.svg#stroke-knowledgebase"></use>
                            </svg>
                            <span> Kiểm Tra Domain </span>
                        </a>
                    </li>

                </ul>
            </div>
            <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
        </nav>
    </div>
</div>
