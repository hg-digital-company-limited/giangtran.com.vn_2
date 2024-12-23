<?php
namespace App\Repositories\PaymentHistory;

use App\Repositories\RepositoryInterface;

interface PaymentHistoryRepositoryInterface extends RepositoryInterface
{
    public static function getPaymentHistoryByUser($userId);
    public static function createPaymentHistory($code, $user_id);
}
