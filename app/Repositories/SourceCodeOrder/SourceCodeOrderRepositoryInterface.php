<?php
namespace App\Repositories\SourceCodeOrder;

use App\Repositories\RepositoryInterface;

interface SourceCodeOrderRepositoryInterface extends RepositoryInterface
{
    public function createSourceCodeOrder($data);
    public function getModel();
    public function getAllByUser($userId);
}
