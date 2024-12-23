<?php
namespace App\Repositories\WebService;

use App\Models\WebService;
use App\Repositories\EloquentRepository;
use App\Repositories\WebService\WebServiceRepositoryInterface;
class WebServiceEloquentRepository extends EloquentRepository implements WebServiceRepositoryInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return WebService::class;
    }

    public function getWebService()
    {
        return WebService::all();
    }

}
