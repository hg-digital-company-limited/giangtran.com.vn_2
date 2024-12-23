<?php

namespace App\Livewire\Services\SourceCode;

use App\Repositories\SourceCodeOrder\SourceCodeOrderRepositoryInterface;
use Livewire\Component;

class Manager extends Component
{
    protected $sourceCodeOrderRepository;
    public $sourceCodeOrders;
    public function mount(SourceCodeOrderRepositoryInterface $sourceCodeOrderRepository)
    {
        $this->sourceCodeOrderRepository = $sourceCodeOrderRepository;
        if(auth()->check()){
            $this->sourceCodeOrders = $this->sourceCodeOrderRepository->getAllByUser(auth()->user()->id);
        }

    }
    public function render()
    {

        return view('livewire.services.source-code.manager');
    }
}
