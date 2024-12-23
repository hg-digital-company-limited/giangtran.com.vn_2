<?php

namespace App\Livewire\Services\Smm;

use App\Repositories\SmmOrder\SmmOrderRepositoryInterface;
use Livewire\Component;

class Manager extends Component
{
    public $smmOrders;
    public function mount(SmmOrderRepositoryInterface $smmOrderRepository)
    {
        $this->smmOrders = $smmOrderRepository->getOrdersByCurrentUser();
    }
    public function render()
    {
        return view('livewire.services.smm.manager');
    }
}
