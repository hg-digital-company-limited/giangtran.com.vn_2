<?php

namespace App\Livewire\Services\SourceCode\Components;

use App\Models\SourceCodeCategory;
use App\Models\SourceCodeProduct;
use Livewire\Component;

class ProductList extends Component
{
    public $search = '';
    public $category = null;
    public $categories;
    public $sortBy = 'created_at';
    public $sortDirection = 'asc';

    public function mount()
    {
        $this->categories = SourceCodeCategory::all();
    }

    public function toggleSortDirection()
    {
        $this->sortDirection = $this->sortDirection === 'asc' ? 'desc' : 'asc';
    }

    public function render()
    {
        $query = SourceCodeProduct::query();

        if ($this->category) {
            $query->where('category_id', $this->category);
        }

        if ($this->search) {
            $query->where('name', 'like', '%' . $this->search . '%');
        }

        $query->orderBy($this->sortBy, $this->sortDirection);

        $sourceCodeProduct = $query->get();

        return view('livewire.services.source-code.components.product-list', [
            'sourceCodeProduct' => $sourceCodeProduct,
            'categories' => $this->categories,
        ]);
    }
}
