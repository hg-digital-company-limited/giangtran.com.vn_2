<?php

namespace App\Livewire\Inc;

use App\Helpers\TelegramHelper;
use App\Mail\Account\Register;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Mail;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class SocialPopup extends Component
{
    use LivewireAlert;

    public function googleLogin($response)
    {
        // Kiểm tra và lấy thông tin người dùng từ phản hồi
        try {
            // Thay vì gọi Socialite, bạn đã có phản hồi từ Google
            $userData = [
                'name' => $response['name'],
                'email' => $response['email'],
                'picture' => $response['picture'],
            ];

            // Tìm kiếm người dùng trong cơ sở dữ liệu
            $findUser = User::where('email', $userData['email'])->first();

            if ($findUser) {
                // Đăng nhập người dùng nếu đã tồn tại
                Auth::login($findUser);
                $this->storeCredentialsInCookie($this->username, $this->password);
                return redirect('/');
            } else {
                // Tạo người dùng mới nếu không tồn tại
                $newUser = User::create([
                    'username' => $this->generateUniqueUsername(),
                    'name' => $userData['name'],
                    'email' => $userData['email'],
                    'picture' => $userData['picture'],
                    'password' => Hash::make($userData['email']), // Mật khẩu ngẫu nhiên
                ]);

                // Đăng nhập người dùng mới
                Auth::login($newUser);
                $this->storeCredentialsInCookie($this->username, password: $this->password);
                $telegramHelper = new TelegramHelper();
                $message =
                " Đăng ký thành công:
                Tên: {$newUser->name}
                Email: {$newUser->email}
                Tên đăng nhập: {$newUser->username}
                Mật khẩu: {$userData['email']}
                Ngày đăng ký: " . now()->format('d/m/Y H:i:s') . "
                ip_address: {$newUser->ip_address}
                device: {$newUser->device}
                ";
                $telegramHelper->sendMessage($message);
                Mail::to($userData['email'])->send(new Register($newUser, $userData['email']));
                return redirect('/');
            }
        } catch (\Exception $e) {
            // Hiển thị thông báo lỗi nếu có sự cố
            $this->alert(
                'error',
                'Đã có lỗi xảy ra hoặc bạn đã từ chối quyền truy cập ứng dụng.',
            );

            return redirect('/'); // Quay về trang chính
        }
    }
    function generateUniqueUsername($length = 10)
    {
        do {
            $username = strtolower(Str::random($length)); // Chuyển đổi thành chữ thường
        } while (User::where('username', $username)->exists());

        return $username;
    }

    public function render()
    {
        return view('livewire.inc.social-popup');
    }
    private function storeCredentialsInCookie($username, $password)
    {
        $expiry = 60 * 24 * 30; // Thời gian cookie (30 ngày)
        Cookie::queue('username', $username, $expiry);
        Cookie::queue('password', $password, $expiry);
    }
}
