<?php

namespace App\Livewire\Services\SourceCode\Components;

use App\Models\SourceCodeProduct;
use App\Repositories\SourceCodeProduct\SourceCodeProductRepositoryInterface;
use Livewire\Component;
use Livewire\WithPagination;

class ProductList extends Component
{
    use WithPagination;

    public $search;
    protected $sourceCodeProductRepository;

    public function mount(SourceCodeProductRepositoryInterface $sourceCodeProductRepository)
    {
        $this->sourceCodeProductRepository = $sourceCodeProductRepository;
    }

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function render()
    {
        return view('livewire.services.source-code.components.product-list', [
            'sourceCodeProduct' => SourceCodeProduct::where('name', 'like', '%' . $this->search . '%')->paginate(16), // Chuyển dữ liệu tới view
        ]);
    }
}
