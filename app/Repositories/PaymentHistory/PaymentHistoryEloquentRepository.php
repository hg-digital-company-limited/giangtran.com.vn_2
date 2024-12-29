<?php
namespace App\Repositories\PaymentHistory;

use App\Helpers\TelegramHelper;
use App\Models\PaymentHistory;
use App\Models\Transaction;
use App\Models\User;
use App\Repositories\EloquentRepository;
use Illuminate\Support\Carbon;
use App\Repositories\PaymentHistory\PaymentHistoryRepositoryInterface;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class PaymentHistoryEloquentRepository extends EloquentRepository implements PaymentHistoryRepositoryInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return PaymentHistory::class;
    }

    public static function getPaymentHistoryByUser($userId)
    {
        if($userId){
            return PaymentHistory::where('user_id', $userId)->orderBy('created_at', 'desc')->get();
        }
        return null;
    }
    public static function createPaymentHistory($code, $user_id)
    {
        // Lấy tất cả các giao dịch
        $transactions = Transaction::all();

        foreach ($transactions as $transaction) {
            // Kiểm tra xem transaction_content có chứa mã code không
            if (strpos($transaction->transaction_content, $code) !== false) {
                // Kiểm tra xem transaction_code đã tồn tại trong bảng PaymentHistory chưa
                $exists = PaymentHistory::where('transaction_code', $transaction->id)->exists();

                if (!$exists) {
                    PaymentHistory::create([
                        'user_id' => $user_id, // Sử dụng user_id được truyền vào
                        'transaction_code' => $transaction->id, // Sử dụng mã giao dịch
                        'amount' => $transaction->amount_in, // Số tiền nạp
                        'status' => $transaction->status ?? 'thành công', // Trạng thái
                        'bank' => $transaction->bank_brand_name, // Tên ngân hàng
                    ]);
                    $telegramHelper = new TelegramHelper();
                    $message =
                    " Nạp thành công:
                    Người nạp: " . Auth::user()->email . "
                    Mã code: {$code}
                    Số tiền: " . number_format($transaction->amount_in, 0, ',', '.') . " VNĐ
                    Ngày nạp: " . now()->format('d/m/Y H:i:s') . "
                    ";
                    $telegramHelper->sendMessage($message);
                    $user = User::find($user_id); // Giả sử bạn có mô hình User
                    $user->balance += $transaction->amount_in; // Cộng số tiền vào balance
                    $user->save(); // Lưu thay đổi
                    return ['status' => 'success', 'amount' => $transaction->amount_in, 'code'=> $code, 'user' =>$user_id];
                }
            }
        }
        // return ['status' => 'success', 'amount' => $transaction->amount_in, 'code'=> $code, 'user' =>$user_id];
        return ['status' => 'not_found', 'amount' => null,  'code'=> $code, 'user' =>$user_id];
    }


}
