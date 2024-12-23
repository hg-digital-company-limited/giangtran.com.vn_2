<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SourceCodeOrder extends Model
{
    use HasFactory;

    protected $table = 'source_code_orders'; // Tên bảng

    protected $fillable = [
        'user_id',
        'source_code_product_id',
        'name',
        'unit_price',
        'payment_method',
        'payment_status',
        'order_code',

        'link_download',
    ]; // Các cột có thể gán giá trị hàng loạt
    public function product()
    {
        return $this->belongsTo(SourceCodeProduct::class, 'source_code_product_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
