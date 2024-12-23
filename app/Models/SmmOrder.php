<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SmmOrder extends Model
{
    use HasFactory;

    protected $table = 'smm_orders';

    protected $fillable = [
        'user_id',
        'smm_service_id',
        'quantity',
        'total_price',
        'status',
        'unit_price',
        'start_count',
        'link',
        'remains',
        'payment_method',
        'payment_status',
        'order_code'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function service()
    {
        return $this->belongsTo(SmmService::class, 'smm_service_id');
    }

    // Hàm tạo đơn hàng

}
