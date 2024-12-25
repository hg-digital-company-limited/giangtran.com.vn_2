<?php

namespace App\Livewire\Page;

use App\Repositories\SmmOrder\SmmOrderRepositoryInterface;
use App\Repositories\SourceCodeOrder\SourceCodeOrderRepositoryInterface;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Illuminate\Support\Facades\Hash;
class Home extends Component
{

    use LivewireAlert;
    protected $smmOrderRepository;
    protected $sourceCodeRepository;
    public $countSmmOrder;
    public $countSourceCodeOrder;
    public function mount(
        SmmOrderRepositoryInterface $smmOrderRepository,
        SourceCodeOrderRepositoryInterface $sourceCodeRepository
    ) {
        $this->smmOrderRepository = $smmOrderRepository;
        $this->sourceCodeRepository = $sourceCodeRepository;

        // Kiểm tra cookie để tự động đăng nhập
        $username = Cookie::get('username');
        $password = Cookie::get('password');

        if ($username && $password) {
            $user = \App\Models\User::where('username', $username)
                ->orWhere('email', $username)
                ->first();

            if ($user && Hash::check($password, $user->password)) {
                Auth::login($user);
            }
        }

        if (Auth::check()) {
            $this->countSmmOrder = $this->smmOrderRepository->getOrdersByCurrentUser()->count();
            $this->countSourceCodeOrder = $this->sourceCodeRepository->getAllByUser(Auth::user()->id)->count();
        }
    }
    public function logout()
    {
        // Đăng xuất người dùng
        Auth::logout();

        // Xóa cookie
        Cookie::queue(Cookie::forget('username'));
        Cookie::queue(Cookie::forget('password'));

        // Chuyển hướng đến trang đăng nhập
        return redirect('/login');
    }

    public function render()
    {
        return view('livewire.page.home');
    }
}
