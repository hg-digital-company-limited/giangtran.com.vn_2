<div>


    <head>

        @livewire('inc.seo', ['title' => 'Điều Khoản & Chính Sách - ' . App\Helpers\SettingsHelper::getSetting('website_name'),
        'description' => App\Helpers\SettingsHelper::getSetting('website_description'),
         'keywords' => 'Điều Khoản & Chính Sách, ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url(App\Helpers\SettingsHelper::getSetting('banner')))])
        <link rel="stylesheet" href="/assets/static/style.css?v=410833453">
        <link rel="stylesheet" type="text/css"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css"
            href="https://cdn.jsdelivr.net/gh/lelinh014756/fui-toast-js@master/assets/css/toast@1.0.1/fuiToast.min.css">
        <script type="text/javascript"
            src="https://cdn.jsdelivr.net/gh/lelinh014756/fui-toast-js@master/assets/js/toast@1.0.1/fuiToast.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
        <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css" />

    </head>

    <body id="content">
        <div class="loader-wrapper" style="z-index: 999999;">
            <div class="boxes"></div>
        </div>
        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>
            <div class="page-body"
                style="scroll-behavior: smooth;
                overflow: hidden;
                position: relative;
                background-position: initial;
                background-size: cover;
                background-image: url(/assets/images/cyberlux/home-bg.jpg);">


                <div class="container mt-5">
                    <div class="row starter-main">

                        <div class="col-md-6">
                            <div class="card title-line">
                                <div class="card-body">
                                    <h3>
                                        <strong>ĐIỀU KHOẢN SỬ DỤNG DỊCH VỤ</strong>
                                    </h3>

                                    <br>
                                    <p>
                                        <strong>1. Giới thiệu</strong><br> Chào mừng bạn đến với trang web của chúng
                                        tôi. Bằng việc truy cập và sử dụng các dịch vụ cung cấp hosting, VPS, reseller,
                                        tên miền, mã nguồn, và cho thuê cron, bạn đồng ý tuân thủ
                                        và bị ràng buộc bởi các điều khoản và điều kiện dưới đây.
                                    </p>
                                    <p>
                                        <strong>2. Đăng ký tài khoản</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Người dùng phải cung cấp thông tin chính xác, đầy đủ khi đăng ký tài khoản.
                                        </li>
                                        <li>
                                            Bạn chịu trách nhiệm bảo mật tài khoản và mật khẩu của mình, và phải thông
                                            báo ngay cho chúng tôi nếu phát hiện bất kỳ hành vi truy cập trái phép nào.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>3. Sử dụng dịch vụ</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Dịch vụ của chúng tôi chỉ được sử dụng cho mục đích hợp pháp.
                                        </li>
                                        <li>
                                            Cấm sử dụng dịch vụ để phát tán các nội dung vi phạm pháp luật, spam, hoặc
                                            các hoạt động xâm phạm quyền lợi của bên thứ ba.
                                        </li>
                                        <li>
                                            Chúng tôi có quyền tạm ngừng hoặc chấm dứt dịch vụ nếu phát hiện bất kỳ vi
                                            phạm nào.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>4. Trách nhiệm của người dùng</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Bạn chịu trách nhiệm toàn bộ về nội dung và hoạt động trên tài khoản của
                                            mình.
                                        </li>
                                        <li>
                                            Bạn cam kết không làm ảnh hưởng đến hoạt động của hệ thống hoặc gây hại cho
                                            các người dùng khác.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>5. Thanh toán và hoàn tiền</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Các khoản thanh toán sẽ được thực hiện trước khi sử dụng dịch vụ.
                                        </li>
                                        <li>
                                            Chính sách hoàn tiền sẽ được áp dụng theo từng gói dịch vụ cụ thể. Mọi yêu
                                            cầu hoàn tiền phải được gửi trong vòng 24 giờ kể từ lúc đăng ký sử dụng dịch
                                            vụ.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>6. Bảo mật</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Chúng tôi cam kết bảo mật thông tin cá nhân của bạn theo quy định pháp luật.
                                        </li>
                                        <li>
                                            Các thông tin cá nhân của bạn sẽ không được chia sẻ với bên thứ ba mà không
                                            có sự đồng ý của bạn, trừ trường hợp pháp luật yêu cầu.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>7. Giới hạn trách nhiệm</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Chúng tôi không chịu trách nhiệm đối với bất kỳ thiệt hại trực tiếp hoặc
                                            gián tiếp nào phát sinh từ việc sử dụng dịch vụ.
                                        </li>
                                        <li>
                                            Trong mọi trường hợp, trách nhiệm của chúng tôi sẽ không vượt quá số tiền
                                            bạn đã thanh toán cho dịch vụ trong 3 tháng gần nhất.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>8. Thay đổi điều khoản</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Chúng tôi có quyền thay đổi các điều khoản và điều kiện này bất kỳ lúc nào.
                                            Mọi thay đổi sẽ được thông báo trên trang web và có hiệu lực ngay sau khi
                                            đăng tải.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>9. Luật áp dụng</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Điều khoản này sẽ được điều chỉnh bởi pháp luật của Việt Nam. Mọi tranh chấp
                                            phát sinh từ việc sử dụng dịch vụ sẽ được giải quyết tại tòa án có thẩm
                                            quyền tại Việt Nam.
                                        </li>
                                    </ul>
                                    <p>
                                        <strong>10. Liên hệ</strong>
                                    </p>
                                    <ul>
                                        <li>
                                            Nếu bạn có bất kỳ câu hỏi nào về các điều khoản này, vui lòng liên hệ với
                                            chúng tôi qua email hoặc điện thoại hỗ trợ khách hàng.
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="card title-line">
                                <div class="card-body">
                                    <h3>
                                        <strong>CHÍNH SÁCH BẢO MẬT</strong>
                                    </h3>

                                    <br>

                                    <p>
                                        <strong>1. Thu thập thông tin cá nhân</strong><br> Chúng tôi thu thập thông tin
                                        cá nhân của bạn khi bạn đăng ký tài khoản, sử dụng dịch vụ, hoặc liên hệ với
                                        chúng tôi. Thông tin này bao gồm, nhưng không giới hạn, tên,
                                        địa chỉ email, số điện thoại, và các thông tin thanh toán.
                                    </p>
                                    <p>
                                        <strong>2. Sử dụng thông tin cá nhân</strong><br> Thông tin cá nhân của bạn được
                                        sử dụng để cung cấp và cải thiện dịch vụ, xử lý thanh toán, và liên hệ với bạn
                                        về các thông tin liên quan đến tài khoản và dịch vụ. Chúng
                                        tôi không bán, trao đổi, hoặc chia sẻ thông tin cá nhân của bạn với bên thứ ba
                                        mà không có sự đồng ý của bạn, trừ khi luật pháp yêu cầu.
                                    </p>
                                    <p>
                                        <strong>3. Bảo mật thông tin</strong><br> Chúng tôi áp dụng các biện pháp bảo
                                        mật phù hợp để bảo vệ thông tin cá nhân của bạn khỏi truy cập trái phép, mất
                                        mát, hoặc lạm dụng. Tuy nhiên, không có phương thức truyền tải
                                        dữ liệu qua internet hoặc lưu trữ điện tử nào là an toàn tuyệt đối, do đó chúng
                                        tôi không thể đảm bảo bảo mật tuyệt đối.
                                    </p>
                                    <p>
                                        <strong>4. Quyền của bạn</strong><br> Bạn có quyền truy cập, sửa đổi, hoặc xóa
                                        thông tin cá nhân của mình bằng cách liên hệ với chúng tôi. Bạn cũng có quyền từ
                                        chối việc thu thập và sử dụng thông tin cá nhân của mình,
                                        nhưng điều này có thể ảnh hưởng đến việc sử dụng các dịch vụ của chúng tôi.
                                    </p>
                                    <h3>
                                        <strong>CHÍNH SÁCH HOÀN TIỀN</strong>
                                    </h3>
                                    <p>
                                        <strong>1. Điều kiện hoàn tiền</strong><br> Chúng tôi chấp nhận yêu cầu hoàn
                                        tiền trong vòng 7 ngày kể từ khi bạn đăng ký sử dụng dịch vụ. Để đủ điều kiện
                                        hoàn tiền, dịch vụ phải chưa được sử dụng hoặc không vi phạm
                                        bất kỳ điều khoản nào trong hợp đồng.
                                    </p>
                                    <p>
                                        <strong>2. Quy trình hoàn tiền</strong><br> Để yêu cầu hoàn tiền, bạn cần liên
                                        hệ với chúng tôi qua email hoặc hệ thống hỗ trợ khách hàng. Sau khi yêu cầu của
                                        bạn được chấp nhận, chúng tôi sẽ xử lý hoàn tiền trong vòng
                                        10 ngày làm việc.
                                    </p>
                                    <p>
                                        <strong>3. Loại trừ</strong><br> Các gói dịch vụ đã sử dụng hoặc quá hạn yêu cầu
                                        hoàn tiền sẽ không đủ điều kiện để được hoàn tiền. Các khoản phí thanh toán cho
                                        tên miền hoặc các dịch vụ bên thứ ba cũng không được hoàn
                                        lại.
                                    </p>
                                    <h3>
                                        <strong>CHÍNH SÁCH XỬ LÝ KHIẾU NẠI</strong>
                                    </h3>
                                    <p>
                                        <strong>1. Tiếp nhận khiếu nại</strong><br> Chúng tôi tiếp nhận mọi khiếu nại
                                        liên quan đến chất lượng dịch vụ thông qua email, hệ thống hỗ trợ khách hàng,
                                        hoặc số điện thoại hotline. Khi nhận được khiếu nại, chúng
                                        tôi sẽ xác nhận đã tiếp nhận và tiến hành xử lý.
                                    </p>
                                    <p>
                                        <strong>2. Thời gian xử lý</strong><br> Chúng tôi cam kết xử lý khiếu nại trong
                                        vòng 7 ngày làm việc kể từ khi nhận được khiếu nại. Trong trường hợp cần thêm
                                        thời gian, chúng tôi sẽ thông báo đến bạn và cung cấp thời
                                        gian dự kiến.
                                    </p>
                                    <p>
                                        <strong>3. Kết quả khiếu nại</strong><br> Sau khi xử lý, chúng tôi sẽ thông báo
                                        kết quả qua email hoặc liên hệ trực tiếp với bạn. Nếu không hài lòng với kết
                                        quả, bạn có quyền yêu cầu xem xét lại hoặc giải quyết qua
                                        các cơ quan pháp lý có thẩm quyền.
                                    </p>
                                    <h3>
                                        <strong>CHÍNH SÁCH COOKIE</strong>
                                    </h3>
                                    <p>
                                        <strong>1. Cookie là gì?</strong><br> Cookie là các tệp nhỏ được gửi đến trình
                                        duyệt của bạn từ một trang web và được lưu trữ trên thiết bị của bạn. Cookie
                                        giúp chúng tôi ghi nhớ thông tin về phiên truy cập của bạn,
                                        cải thiện trải nghiệm người dùng và cung cấp nội dung phù hợp hơn.
                                    </p>
                                    <p>
                                        <strong>2. Sử dụng cookie</strong><br> Chúng tôi sử dụng cookie để theo dõi các
                                        phiên làm việc, lưu trữ tùy chọn người dùng, và phân tích lưu lượng truy cập.
                                        Các cookie này giúp chúng tôi cải thiện dịch vụ và mang lại
                                        trải nghiệm tốt hơn cho bạn.
                                    </p>
                                    <p>
                                        <strong>3. Quản lý cookie</strong><br> Bạn có thể quản lý hoặc xóa cookie thông
                                        qua cài đặt trình duyệt của mình. Tuy nhiên, nếu bạn tắt cookie, một số tính
                                        năng của trang web có thể không hoạt động bình thường.
                                    </p>
                                    <h3>
                                        <strong>CHÍNH SÁCH BẢO MẬT DỮ LIỆU</strong>
                                    </h3>
                                    <p>
                                        <strong>1. Thu thập và lưu trữ dữ liệu</strong><br> Chúng tôi cam kết bảo vệ dữ
                                        liệu của bạn và tuân thủ các quy định về bảo mật dữ liệu. Dữ liệu của bạn sẽ
                                        được lưu trữ trên các máy chủ bảo mật và chỉ được truy cập
                                        bởi các nhân viên có thẩm quyền.
                                    </p>
                                    <p>
                                        <strong>2. Sử dụng dữ liệu</strong><br> Dữ liệu của bạn sẽ được sử dụng để cung
                                        cấp dịch vụ, cải thiện hiệu suất hệ thống, và thực hiện các yêu cầu pháp lý.
                                        Chúng tôi không chia sẻ dữ liệu của bạn với bất kỳ bên thứ
                                        ba nào, trừ khi được yêu cầu bởi pháp luật.
                                    </p>
                                    <p>
                                        <strong>3. Quyền bảo mật dữ liệu</strong><br> Bạn có quyền yêu cầu truy cập, sửa
                                        đổi, hoặc xóa dữ liệu cá nhân của mình. Chúng tôi sẽ tuân thủ các yêu cầu này
                                        trong giới hạn pháp lý và chính sách bảo mật của chúng tôi.
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script src="/assets/static/jquery.min.js"></script>
            <script src="/assets/static/config.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
            <script src="/assets/static/cyberlux.js"></script>
            <script src="/assets/static/handlebars.min.js"></script>
            <script src="/assets/static/bundle.min.js"></script>
            <script src="/assets/static/feather.min.js"></script>
            <script src="/assets/static/bootstrap.bundle.min.js"></script>
            <script src="/assets/static/feather.min.js"></script>
            <script src="/assets/static/simplebar.js"></script>
            <script src="/assets/static/swiper-bundle.min.js"></script>
            <script src="/assets/static/sidebar-menu.js"></script>
            <script src="/assets/static/bootstrap-notify.min.js"></script>
            <script src="/assets/static/index.js"></script>
            <script src="/assets/static/custom_touchspin.js"></script>
            <script src="/assets/static/simple-datatable.js"></script>
            <script src="/assets/static/handlebars.js"></script>
            <script src="/assets/static/typeahead.bundle.js"></script>
            <script src="/assets/static/handlebars.js"></script>
            <script src="/assets/static/script.js"></script>
        </div>
    </body>
</div>
