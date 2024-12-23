<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SourceCodeCategory extends Model
{
    use HasFactory;

    protected $table = 'source_code_categories'; // Tên bảng

    protected $fillable = ['name']; // Các cột có thể gán giá trị hàng loạt

    public function sourceCodeProducts()
    {
        return $this->hasMany(SourceCodeProduct::class, 'category_id');
    }
}
