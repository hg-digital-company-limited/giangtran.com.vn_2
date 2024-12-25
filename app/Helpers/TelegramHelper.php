<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Http;

class TelegramHelper
{
    protected $botToken;

    public function __construct()
    {
        $this->botToken = SettingsHelper::getSetting('telegram_bot_token');
    }

    public function sendMessage($message)
    {
        $url = "https://api.telegram.org/bot{$this->botToken}/sendMessage";

        $response = Http::post($url, [
            'chat_id' => SettingsHelper::getSetting('telegram_chat_id'),
            'text' => $message,
        ]);

        return $response->successful();
    }
}
