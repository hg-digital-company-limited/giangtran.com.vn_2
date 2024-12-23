<?php
namespace App\Repositories\SmmOrder;

use App\Repositories\RepositoryInterface;

interface SmmOrderRepositoryInterface extends RepositoryInterface
{
    public function createOrder($data);
    public function getOrdersByCurrentUser();
    public function updatePaymentStatus($orderCode, $status);
}
