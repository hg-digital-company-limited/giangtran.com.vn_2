<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebService extends Model
{
    use HasFactory;

    protected $table = 'web_services'; // Tên bảng nếu khác với tên model

    protected $fillable = [
        'name',
        'image',
    ];
}
