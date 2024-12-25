<?php

namespace App\Livewire\Auth;

use App\Models\ActivityHistory;
use App\Repositories\User\UserRepositoryInterface;
use Illuminate\Support\Facades\Cookie;
use Livewire\Attributes\Layout;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Repositories\ActivityHistory\ActivityHistoryRepositoryInterface;
use Laravel\Socialite\Facades\Socialite;
class Login extends Component
{
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
                Auth::login($newUser);
                $this->storeCredentialsInCookie($this->username, $this->password);
                // Hiện thông báo thành công
                $this->dispatch('showModalAlert', [
                    'title' => 'Đăng ký thành công với Google!',
                    'message' => 'Chúc bạn có những trải nghiệm tuyệt vời!',
                ]);
                $this->activityHistoryRepository->logActivity('Đăng nhập bằng Google');
                return redirect('/');
            }
        } catch (\Exception $e) {
            // Hiển thị thông báo lỗi nếu có sự cố
            $this->dispatch('showModalAlert', [
                'title' => 'Đã có lỗi xảy ra hoặc bạn đã từ chối quyền truy cập ứng dụng.',
                'message' => 'Đã có lỗi xảy ra hoặc bạn đã từ chối quyền truy cập ứng dụng.',
            ]);

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
