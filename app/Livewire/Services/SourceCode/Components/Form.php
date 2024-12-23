<?php

namespace App\Livewire\Services\SourceCode\Components;

use App\Models\SourceCodeProduct;
use App\Repositories\SourceCodeOrder\SourceCodeOrderRepositoryInterface;
use App\Repositories\SourceCodeProduct\SourceCodeProductRepositoryInterface;
use App\Repositories\User\UserRepositoryInterface;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Form extends Component
{
    use LivewireAlert;
    public $id;
    public $sourceCodeDetail;
    protected $sourceCodeOrderRepository ,$userRepository ,$sourceCodeProductRepository;
    public $errors = [];

    public function mount(SourceCodeProductRepositoryInterface $sourceCodeProductRepository,$id)
    {
        $this->id = $id;
        $this->sourceCodeProductRepository = $sourceCodeProductRepository;
        $this->sourceCodeDetail = $this->sourceCodeProductRepository->getById($id);
    }
    public function payment(UserRepositoryInterface $userRepository, SourceCodeOrderRepositoryInterface $sourceCodeOrderRepository,SourceCodeProductRepositoryInterface $sourceCodeProductRepository)
    {
        $this->userRepository = $userRepository;
        $this->sourceCodeProductRepository = $sourceCodeProductRepository;
        $this->sourceCodeOrderRepository = $sourceCodeOrderRepository;
        if (!auth()->user()) {
            $this->alert('error', 'Vui lòng đăng nhập để mua mã nguồn');
            return;
        }
        if ($this->sourceCodeDetail->price > auth()->user()->balance) {
            $this->alert('error', 'Số dư tài khoản không đủ');
            return;
        }
        $orderCode = random_int(100000, 999999);
        while ($this->sourceCodeOrderRepository->getModel()::where('order_code', $orderCode)->exists());

        if ($this->userRepository->getCurrentUserBalance() < $this->sourceCodeDetail->price) {
            $this->alert('error', 'Số dư tài khoản không đủ');
            return;
        }
        $this->sourceCodeOrderRepository->createSourceCodeOrder([
            'user_id' => auth()->user()->id,
            'source_code_product_id' => $this->sourceCodeDetail->id,
            'name' => $this->sourceCodeDetail->name,
            'quantity' => 1,
            'unit_price' => $this->sourceCodeDetail->price,
            'order_code' => $orderCode,
            'link_download' => $this->sourceCodeDetail->link_download,
        ]);
        $this->userRepository->deductBalance(auth()->user()->id, $this->sourceCodeDetail->price);
        $this->sourceCodeProductRepository->updateSourceCodeProductPurchaseCount($this->sourceCodeDetail->id );

        $this->alert('success', 'Mua mã nguồn thành công!');
        return redirect('/source-code/manager');
    }

    public function render()
    {
        return view('livewire.services.source-code.components.form');
    }
}
