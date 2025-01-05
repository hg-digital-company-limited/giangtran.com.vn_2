<?php

namespace App\Livewire\Inc;
use App\Models\AccessHistory;
use Illuminate\Support\Facades\Cookie;
use App\Repositories\User\UserRepositoryInterface; // Thêm dòng này
use Illuminate\Support\Facades\Auth;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;

class Header extends Component
{
    use LivewireAlert;

    public $title;
    public $description;
    public $balance; // Thêm thuộc tính để lưu số dư
    public $name; // Thêm thuộc tính để lưu tên người dùng
    protected $userRepository;
    public function mount(UserRepositoryInterface $userRepository, $title = null, $description = null)
    {
        $this->userRepository = $userRepository; // Inject repository
        $this->title = $title ?? 'Trang Khách Hàng';
        $this->description = $description ?? 'Trang khách hàng';
        $this->balance = $this->userRepository->getCurrentUserBalance(); // Lấy số dư người dùng
        $this->name = $this->userRepository->getCurrentUserName(); // Lấy tên người dùng
           $this->recordAccess();
    }

    public function render()
    {
        return view('livewire.inc.header', [
        ]);
    }
    private function recordAccess()
    {
        $today = now()->toDateString(); // Lấy ngày hiện tại

        // Kiểm tra xem bản ghi cho ngày hôm nay đã tồn tại chưa
        $accessRecord = AccessHistory::where('date', $today)->first();

        if ($accessRecord) {
            // Nếu đã tồn tại, tăng số lượt truy cập
            $accessRecord->increment('visit_count');
        } else {
            // Nếu chưa tồn tại, tạo mới bản ghi
            AccessHistory::create([
                'date' => $today,
                'visit_count' => 1,
            ]);
        }
    }
    public function logout()
    {
        Auth::logout();
        Cookie::queue(Cookie::forget('username'));
        Cookie::queue(Cookie::forget('password'));
        return redirect('/login');
    }
}
