<?php

namespace App\Livewire\Services\WebService;

use App\Repositories\WebService\WebServiceRepositoryInterface;
use Livewire\Component;

class Create extends Component
{
    public $webService;
    protected $webServiceRepository;
    public function mount(WebServiceRepositoryInterface $webServiceRepository)
    {
        $this->webService = $webServiceRepository->getWebService();
        //   #attributes: array:7 [▼
        //   "id" => 1
        //   "name" => "Code, thêm chức năng, và xây dựng website"
        //   "image" => "01JFRQ0ZRF671FRRHA2GXX56A2.jpeg"
        //   "min_price" => "100000.00"
        //   "max_price" => "1000000.00"
        //   "created_at" => "2024-12-23 09:55:01"
        //   "updated_at" => "2024-12-23 09:55:01"
        // ]
    }
    public function render()
    {
        return view('livewire.services.web-service.create');
    }
}
