<?php

namespace App\Models;

use App\Events\MessageSent;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\QueryException;

class Transaction extends Model
{
    use HasFactory;

    protected $table = 'transactions';

    protected $fillable = [
        'id',
        'bank_brand_name',
        'account_number',
        'transaction_date',
        'amount_out',
        'amount_in',
        'accumulated',
        'transaction_content',
        'reference_number',
        'code',
        'sub_account',
        'bank_account_id',
    ];

    public $incrementing = false; // ID không tự động tăng
    protected $keyType = 'string'; // Loại khóa chính



}
