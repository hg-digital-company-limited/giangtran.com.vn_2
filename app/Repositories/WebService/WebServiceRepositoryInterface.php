<?php
namespace App\Repositories\WebService;

use App\Repositories\RepositoryInterface;

interface WebServiceRepositoryInterface extends RepositoryInterface
{
    public function getWebService();
}
