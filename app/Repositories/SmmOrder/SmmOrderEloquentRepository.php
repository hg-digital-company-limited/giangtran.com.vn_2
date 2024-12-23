<?php
namespace App\Repositories\SmmOrder;

use App\Models\SmmOrder;
use App\Models\User;
use App\Repositories\EloquentRepository;
use App\Repositories\SmmOrder\SmmOrderRepositoryInterface;
use Illuminate\Support\Facades\Auth;
class SmmOrderEloquentRepository extends EloquentRepository implements SmmOrderRepositoryInterface
{
    /**
     * get model
     * @return string
     */


    public function getModel()
    {
        return SmmOrder::class;
    }

    public function createOrder($data)
    {
        $user = User::find($data['user_id']);
        // Trừ tiền từ tài khoản của người dùng
        $user->balance -= $data['total_price'];
        $user->save();
        // Tạo đơn hàng mới
        $this->_model::create([
            'user_id' => $data['user_id'],
            'smm_service_id' => $data['smm_service_id'],
            'quantity' => $data['quantity'],
            'total_price' => $data['total_price'],
            'status' => $data['status'],
            'unit_price' => $data['unit_price'],
            'start_count' => $data['start_count'],
            'link' => $data['link'],
            'remains' => $data['remains'],
        ]);
        return true;
    }

    public function getOrdersByCurrentUser()
    {
        // Lấy người dùng đang đăng nhập
        $user = Auth::user();

        // Kiểm tra xem người dùng có tồn tại không
        if ($user) {
            // Truy vấn và trả về tất cả đơn hàng của người dùng
            return $this->_model::where('user_id', $user->id)->get();
        }

        return []; // Trả về mảng rỗng nếu không có người dùng đăng nhập
    }
    public function updatePaymentStatus($orderCode, $status)
    {
        return $this->_model::where('order_code', $orderCode)->update(['payment_status' => $status]);
    }
}
