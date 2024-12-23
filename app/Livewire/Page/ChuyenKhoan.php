<?php

namespace App\Livewire\Page;

use App\Events\MessageSent;
use App\Models\PaymentHistory;
use App\Repositories\PaymentHistory\PaymentHistoryRepositoryInterface;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert; // Thêm import này
use App\Models\Transaction; // Đảm bảo import model Transaction
use Illuminate\Support\Facades\Log; // Đảm bảo import Log

class ChuyenKhoan extends Component
{
    use LivewireAlert; // Kích hoạt Livewire Alert
    public $paymentHistories;
    protected $paymentHistoryRepository;
    public function mount(PaymentHistoryRepositoryInterface $paymentHistoryRepository)
    {
        $this->paymentHistoryRepository = $paymentHistoryRepository;
        $userId = auth()->id(); // Lấy ID người dùng hiện tại
        $this->paymentHistories = $this->paymentHistoryRepository->getPaymentHistoryByUser($userId) ?? [];
    }


    public function render()
    {
        return view('livewire.page.chuyen-khoan');
    }
}
