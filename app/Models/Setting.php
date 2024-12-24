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
        'logo',
        'banner',
        'loading_image',
        'website_name',
        'website_description',
        'contact',
        'notification',
        'prefix',
        'min_deposit',
        'account_number',
        'account_name',
        'account_name_qr',
        'sepay_token',
        'sepay_account_number',
        'telegram_bot_token',
        'telegram_chat_id',
        'google_client_id',
        'google_client_secret',
        'google_redirect',
        'mail_host',
        'mail_username',
        'mail_port',
        'mail_password',
        'mail_encryption',
        'mail_from_address',
        'mail_from_name',

    ];
}
