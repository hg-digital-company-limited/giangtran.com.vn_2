<?php
namespace App\Repositories\ActivityHistory;

use App\Models\ActivityHistory;
use App\Repositories\EloquentRepository;
use Illuminate\Support\Carbon;
use App\Repositories\ActivityHistory\ActivityHistoryRepositoryInterface;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class ActivityHistoryEloquentRepository extends EloquentRepository implements ActivityHistoryRepositoryInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return ActivityHistory::class;
    }

    public static function logActivity($content, $userId = null)
    {
        if (is_null($userId)) {
            $userId = Auth::user()->id;
        }

        // Nếu không có ipAddress, lấy từ request
        $ipAddress = request()->ip();

        // Tạo bản ghi lịch sử hoạt động
        $activity = ActivityHistory::create([
            'user_id' => $userId,
            'content' => $content,
            'ip_address' => $ipAddress,
        ]);

        // Kiểm tra số lượng hoạt động của người dùng
        $activityCount = ActivityHistory::where('user_id', $userId)->count();

        // Nếu số lượng hoạt động lớn hơn 100, xóa những bản ghi cũ
        if ($activityCount > 100) {
            ActivityHistory::where('user_id', $userId)
                ->orderBy('created_at', 'asc') // Sắp xếp theo thời gian tạo
                ->limit($activityCount - 100) // Giữ lại 100 bản ghi mới nhất
                ->delete();
        }

        return $activity;
    }
    public static function getActivitiesByUserId($userId = null)
    {
        if (is_null($userId)) {
            $userId = Auth::user()->id;
        }
        return ActivityHistory::where('user_id', $userId)->get();
    }

}
