<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;

    protected $fillable = [
        'avatar',
        'icon',
        'banner',
        'website_name',
        'website_description',
        'prefix',
        'min_deposit',
        'account_number',
        'account_name',
    ];
}
