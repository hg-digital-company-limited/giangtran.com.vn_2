<?php

namespace App\Livewire\Services\SourceCode;

use App\Models\SourceCodeProduct;
use Livewire\Component;

class Create extends Component
{
    public $sourceCodeProduct;

    public function mount()
    {
        $this->sourceCodeProduct = SourceCodeProduct::all();
    }
    public function render()
    {
        return view('livewire.services.source-code.create');
    }
}
