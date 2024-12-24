<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Http;

class TelegramHelper
{
    protected $botToken;

    public function __construct()
    {
        $this->botToken = env('TELEGRAM_TOKEN');
    }

    public function sendMessage($message)
    {
        $url = "https://api.telegram.org/bot{$this->botToken}/sendMessage";

        $response = Http::post($url, [
            'chat_id' => 6708960219,
            'text' => $message,
        ]);

        return $response->successful();
    }
}
