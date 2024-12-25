<img src="https://i.ibb.co/MNkB3KP/giangtran-1.png" alt="Logo" style="width: 300px;">
<br>
 Xin chào! <br>
 cảm ơn bạn đã đăng ký tại {{ App\Helpers\SettingsHelper::getSetting('website_name') }} <br>
 Tên người dùng: {{ $user->name }} <br>
 Email: {{ $user->email }} <br>
 Username: {{ $user->username }} <br>
 Mật khẩu: {{ $password }} <br>
 IP đăng ký: {{ $user->ip_address }} <br>
 Thiết bị đăng ký: {{ $user->device }} <br>
 Ngày đăng ký: {{ now()->format('d/m/Y H:i:s') }} <br>


