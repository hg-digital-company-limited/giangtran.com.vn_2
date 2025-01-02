<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{{ Storage::url(App\Helpers\SettingsHelper::getSetting('icon')) }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ Storage::url(App\Helpers\SettingsHelper::getSetting('icon')) }}" type="image/x-icon">
    <title>404 - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>
    <!-- Google font-->
    <link rel="stylesheet" type="text/css" href="/assets/assets/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="/assets/assets/css/style.css">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="/assets/assets/css/responsive.css">
  </head>
  <body>
    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on tap ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <!-- error-404 start-->
      <div class="error-wrapper">
        <div class="container"><img class="img-100" src="/assets/images/other-images/sad.png" alt="">
          <div class="error-heading">
            <h2 class="headline font-danger">404</h2>
          </div>
          <div class="col-md-8 offset-md-2">
            <p class="sub-content">Trang bạn đang cố gắng truy cập hiện không khả dụng. Điều này có thể do trang không tồn tại hoặc đã bị di chuyển.</p>
          </div>
          <div><a class="btn btn-danger-gradien btn-lg" href="/">TRỞ VỀ TRANG CHỦ</a></div>
        </div>
      </div>
      <!-- error-404 end      -->
    </div>
  </body>
</html>
