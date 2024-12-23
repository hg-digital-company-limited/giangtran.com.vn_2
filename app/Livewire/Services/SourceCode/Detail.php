<?php

namespace App\Livewire\Services\SourceCode;

use App\Repositories\SourceCodeProduct\SourceCodeProductRepositoryInterface;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Detail extends Component
{
    use LivewireAlert;
    public $sourceCodeDetail;
    protected $sourceCodeProductRepository;
    public $randomProducts;
    public function mount($id, SourceCodeProductRepositoryInterface $sourceCodeProductRepository)
    {
        $this->sourceCodeProductRepository = $sourceCodeProductRepository;
        $this->randomProducts = $this->sourceCodeProductRepository->getRandomProductsFromSameCategory($id);

        $this->sourceCodeDetail = $this->sourceCodeProductRepository->find($id);
        if (!$this->sourceCodeDetail) {
            abort(404);
        }
        $this->sourceCodeDetail->view_count++;
        $this->sourceCodeDetail->save();
    }

    public function render()
    {
        return view('livewire.services.source-code.detail');
    }
}
