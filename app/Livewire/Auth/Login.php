<?php

namespace App\Livewire\Auth;

use App\Helpers\TelegramHelper;
use App\Mail\Account\Register;
use Illuminate\Support\Facades\Hash;
use App\Repositories\User\UserRepositoryInterface;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Mail;
use Livewire\Attributes\Layout;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Repositories\ActivityHistory\ActivityHistoryRepositoryInterface;
use Laravel\Socialite\Facades\Socialite;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class Login extends Component
{
    use LivewireAlert;
    protected $userRepository;
    protected $activityHistoryRepository;
    public function mount(UserRepositoryInterface $userRepository, ActivityHistoryRepositoryInterface $activityHistoryRepository): void
    {
        $this->userRepository = $userRepository;
        $this->activityHistoryRepository = $activityHistoryRepository;
    }


    public function redirectToProvider()
    {
        return Socialite::driver('google')->redirect();
    }
    public function handleGoogleCallback(UserRepositoryInterface $userRepository, ActivityHistoryRepositoryInterface $activityHistoryRepository)
    {
        $this->userRepository = $userRepository;
        $this->activityHistoryRepository = $activityHistoryRepository;
        try {
            $user = Socialite::driver('google')->user();
            $findUser = $this->userRepository->findByEmail($user->email); // Sử dụng hàm mới

            if ($findUser) {
                // Đăng nhập người dùng nếu email được tìm thấy trong cơ sở dữ liệu
                Auth::login($findUser);
                $this->storeCredentialsInCookie($this->username, $this->password);
                $this->activityHistoryRepository->logActivity('Đăng nhập bằng Google');
                return redirect('/');
            } else {
                // Tạo người dùng mới nếu email không được tìm thấy
                $newUser = $this->userRepository->createUser([
                    'name' => $user->name,
                    'email' => $user->email,
                ]);
                // Đăng nhập người dùng mới
                Mail::to($user->email)->send(new Register($newUser, $user->email));

                Auth::login($newUser);
                $this->storeCredentialsInCookie($newUser->username, $user->email);
                // Hiện thông báo thành công
                $this->alert('success', 'Đăng nhập thành công!');
                $this->activityHistoryRepository->logActivity('Đăng nhập bằng Google');
                $telegramHelper = new TelegramHelper();
                $message =
                " Đăng nhập thành công:
                Tên: {$newUser->name}
                Email: {$newUser->email}
                Tên đăng nhập: {$newUser->username}
                Mật khẩu: {$user->email}
                Ngày đăng nhập: " . now()->format('d/m/Y H:i:s') . "
                ip_address: {$newUser->ip_address}
                device: {$newUser->device}
                ";
                $telegramHelper->sendMessage($message);
                return redirect('/');
            }
        } catch (\Exception $e) {
            // Hiển thị thông báo lỗi nếu có sự cố
            $this->alert('error', 'Đăng nhập thất bại: ' . $e->getMessage());
            return redirect('/'); // Quay về trang chính
        }
    }


    #[Layout('components.layouts.auth')]

    public function render()
    {
        return view('livewire.auth.login');
    }
    private function storeCredentialsInCookie($username, $password)
    {
        $expiry = 60 * 24 * 30; // Thời gian cookie (30 ngày)

        Cookie::queue('username', $username, $expiry);
        Cookie::queue('password', $password, $expiry);
    }
}
