<?php
namespace App\Repositories\ActivityHistory;

use App\Repositories\RepositoryInterface;

interface ActivityHistoryRepositoryInterface extends RepositoryInterface
{
    public static function logActivity($content, $userId = null);
    public static function getActivitiesByUserId($userId = null);
}
