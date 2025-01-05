<footer class="footer">
    <div class="container-fluid">
        <div class="row gy-1">
            <div class="col-lg-6 col-md-7 footer-copyright">
                <p class="mb-0 f-light f-w-500">
                    COPYRIGHT 2025 © {{ App\Helpers\SettingsHelper::getSetting('website_name') }}
                    @php
                        $todayVisitCount = \App\Models\AccessHistory::where('date', now()->toDateString())->value('visit_count') ?? 0;
                    @endphp
                    | Hôm nay: {{ $todayVisitCount }} lượt truy cập
                </p>
            </div>
            <div class="col-lg-6 col-md-5">
                <div class="d-flex">
                    <div class="lang-title f-light f-w-500"><span
                            onclick="window.open('/dieu-khoan');" style="cursor: pointer;"> Điều
                            Khoản & Chính Sách </span></div>
                </div>
            </div>
        </div>
    </div>
</footer>
