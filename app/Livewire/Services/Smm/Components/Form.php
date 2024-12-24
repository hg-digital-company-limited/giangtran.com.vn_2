<?php

namespace App\Livewire\Services\Smm\Components;

use App\Helpers\TelegramHelper;
use App\Mail\Order\Smm;
use App\Models\SmmCategory;
use App\Models\SmmService;
use App\Repositories\ActivityHistory\ActivityHistoryEloquentRepository;
use App\Repositories\SmmOrder\SmmOrderRepositoryInterface;
use Illuminate\Support\Facades\Mail;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
class Form extends Component
{
    use LivewireAlert;
    public $balance;



    public $selectedCategory, $categories, $services, $selectedCategory_path, $quantity, $link, $image; // Danh sách danh mục
    public $selectedService, $selectedServicePrice, $selectedServiceMin, $selectedServiceMax, $selectedServiceTime;
    public $errors = [];
    protected $smmOrderRepository;
    public function mount(SmmOrderRepositoryInterface $smmOrderRepository)
    {
        $this->smmOrderRepository = $smmOrderRepository;

        $this->balance = Auth::user()->balance ?? 0;
        $this->categories = SmmCategory::get();
        if ($this->categories->isNotEmpty()) {
            $this->selectedCategory = $this->categories->first()->id;
            $this->selectedCategory_path = $this->categories->first()->image ?? null;
            $this->services = SmmService::where('smmcategory_id', $this->selectedCategory)->get(); // Return an empty collection

        } else {
            $this->selectedCategory = null;
            $this->selectedCategory_path = null;
            $this->services = collect(); // Return an empty collection
        }

        $this->selectedService = SmmService::where('smmcategory_id', $this->selectedCategory)->first()->id;
        $this->selectedServicePrice = SmmService::where('smmcategory_id', $this->selectedCategory)->first()->price;
        $this->selectedServiceMin = SmmService::where('smmcategory_id', $this->selectedCategory)->first()->min;
        $this->selectedServiceMax = SmmService::where('smmcategory_id', $this->selectedCategory)->first()->max;
        $this->selectedServiceTime = SmmService::where('smmcategory_id', $this->selectedCategory)->first()->time;
        $this->quantity = $this->selectedServiceMin;
    }
    public function updatedSelectedCategory()
    {
        $services = SmmService::where('smmcategory_id', $this->selectedCategory)->get();
        if ($services->isNotEmpty()) {
            $this->services = $services;
            $firstService = $services->first();

            $this->selectedService = $firstService->id;
            $this->selectedServicePrice = $firstService->price;
            $this->selectedServiceMin = $firstService->min;
            $this->selectedServiceMax = $firstService->max;
            $this->selectedServiceTime = $firstService->time;
            $this->quantity = $this->selectedServiceMin;
        }

        $this->dispatch('select2:updated');
    }
    public function updatedSelectedService()
    {
        $service = SmmService::find($this->selectedService);

        if ($service) {
            $this->selectedServicePrice = $service->price;
            $this->selectedServiceMin = $service->min;
            $this->selectedServiceMax = $service->max;
            $this->selectedServiceTime = $service->time;
            $this->quantity = $service->min; // Assuming you want to set quantity to min
        }

        $this->dispatch('select2:updated');
    }
    public function updatedQuantity()
    {
        $this->dispatch('select2:updated');
    }

    public function submitOrder(SmmOrderRepositoryInterface $smmOrderRepository) // Hàm submit đơn hàng
    {
        $this->smmOrderRepository = $smmOrderRepository;

        $totalPrice = $this->getServicePrice($this->selectedService) * $this->quantity;

        // Get user's balance
        // Reset errors before processing
        $this->errors = [];

        // Check if the user is authenticated
        if (!auth()->user()) {
            $this->errors['auth'] = 'Vui lòng đăng nhập để tạo đơn hàng';
        }

        if (is_null($this->selectedService)) {
            $this->errors['selectedService'] = 'Vui lòng chọn gói dịch vụ.';
        }
        if (is_null($this->selectedService)) {
            $this->errors['selectedService'] = 'Vui lòng chọn gói dịch vụ.';
        }
        if (is_null($this->quantity) || $this->quantity < $this->selectedServiceMin || $this->quantity > $this->selectedServiceMax) {
            $this->errors['quantity'] = 'Số lượng không hợp lệ. Tối thiểu: ' . $this->selectedServiceMin . ', tối đa: ' . $this->selectedServiceMax . '.';
        }
        if (empty($this->link)) {
            $this->errors['link'] = 'Vui lòng nhập link.';
        }
        if ($this->balance < $totalPrice) {
            $this->errors['paymentMethod'] = 'Số dư tài khoản không đủ để thanh toán.';
        }
        // If there are errors, alert the user and return
        if (!empty($this->errors)) {
            foreach ($this->errors as $error) {
                $this->alert('error', $error); // Alert each error
            }
            $this->dispatch('select2:updated');
            return;
        }
        // Prepare order data
        $data = [
            'user_id' => auth()->user()->id,
            'smm_service_id' => $this->selectedService,
            'quantity' => $this->quantity,
            'total_price' => $totalPrice,
            'status' => 'pending',
            'unit_price' => $this->getServicePrice($this->selectedService),
            'start_count' => 0,
            'link' => $this->link,
            'remains' => $this->quantity,
        ];
        // Create the order

        $order = $this->smmOrderRepository->createOrder($data);
        if ($order) {
            // Reset form fields after successful order creation
            $this->reset();
            $this->alert('success', 'Đơn hàng đã được tạo thành công');
            ActivityHistoryEloquentRepository::logActivity('Tạo đơn hàng Smm!');


            $telegramHelper = new TelegramHelper();
            $message =
            "Người dùng: " . auth()->user()->email . "
             Đã mua dịch vụ: {$order->service->name}
             giá dịch vụ: " . number_format($order->unit_price, 0, ',', '.') . " VNĐ" . "
             số lượng: {$order->quantity}
             tổng tiền: " . number_format($order->total_price, 0, ',', '.') . " VNĐ" . "
             link: {$order->link}
             Ngày mua: " . now()->format('d/m/Y H:i:s') . "
            ";
            $telegramHelper->sendMessage($message);


            Mail::to(auth()->user()->email)->send(new Smm($order));
            return redirect('/smm/manager');
        } else {
            $this->alert('error', 'Đã xảy ra lỗi khi tạo đơn hàng. Vui lòng thử lại.');
        }
    }


    public function getServicePrice($id)
    {

        if (SmmService::find($id)) {
            return SmmService::find($id)->price;
        }
        return null;
    }
    public function getServiceMin($id)
    {

        if (SmmService::find($id)) {
            return SmmService::find($id)->min;
        }
        return null;
    }
    public function getServiceMax($id)
    {

        if (SmmService::find($id)) {
            return SmmService::find($id)->max;
        }
        return null;
    }
    public function getServiceTime($id)
    {

        if (SmmService::find($id)) {
            return SmmService::find($id)->time;
        }
        return null;
    }



    public function render()
    {

        return view('livewire.services.smm.components.form');
    }
}
