<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SourceCodeProduct extends Model
{
    use HasFactory;

    protected $table = 'source_code_products'; // Tên bảng

    protected $fillable = [
        'category_id',
        'name',
        'description',
        'demo',
        'price',
        'link_download',
        'purchase_count',
        'view_count',
        'images',
    ]; // Các cột có thể gán giá trị hàng loạt
    public function category()
    {
        return $this->belongsTo(SourceCodeCategory::class);
    }
}
