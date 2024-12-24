<?php
namespace App\Repositories\Transaction;

use App\Helpers\SettingsHelper;
use App\Models\Transaction;
use App\Repositories\EloquentRepository;
use Illuminate\Support\Carbon;
use App\Repositories\Transaction\TransactionRepositoryInterface;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class TransactionEloquentRepository extends EloquentRepository implements TransactionRepositoryInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return Transaction::class;
    }
    public function createUniqueTransaction(array $attributes)
    {
        // Kiểm tra xem ID đã tồn tại chưa
        if (Transaction::where('id', $attributes['id'])->exists()) {
            return;
        }

        // Tạo giao dịch mới
        return Transaction::create($attributes);
    }
    public  function fetchTransactionsFromApi()
    {
        $url = 'https://my.sepay.vn/userapi/transactions/list';
        $accountNumber = SettingsHelper::getSetting('sepay_account_number');
        $limit = 10;

        // Khởi tạo cURL
        $ch = curl_init();

        // Thiết lập các tùy chọn cho cURL
        curl_setopt($ch, CURLOPT_URL, $url . '?account_number=' . $accountNumber . '&limit=' . $limit);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json',
            'Authorization: Bearer '.SettingsHelper::getSetting('sepay_token'),
        ]);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);

        // Thực hiện yêu cầu cURL
        $response = curl_exec($ch);

        // Kiểm tra lỗi cURL
        if (curl_errno($ch)) {
            return;
        }

        // Đóng cURL
        curl_close($ch);

        // Giải mã phản hồi JSON
        $data = json_decode($response, true);

        // Kiểm tra nếu phản hồi thành công
        if (isset($data['status']) && $data['status'] === 200 && $data['messages']['success']) {
            $transactions = $data['transactions'] ?? [];

            foreach ($transactions as $transaction) {
                try {
                    $this->createUniqueTransaction($transaction);
                } catch (\Exception $e) {
                    \Log::error('Error creating transaction: ' . $e->getMessage());
                }
            }
        }
    }

}
