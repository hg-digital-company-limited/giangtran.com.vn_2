<?php

namespace App\Livewire\Tools\CheckIp;

use Illuminate\Support\Facades\Http;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class Form extends Component
{
    use LivewireAlert;

    public $status;
    public $ip;
    public $ipData = [];

    public function render()
    {
        return view('livewire.tools.check-ip.form');
    }

    public function checkIp()
    {
        // Clean the IP address
        $this->ip = trim($this->ip);


        // Fetch IP data from the API
        $response = $this->getIpData($this->ip);

        if ($response) {
            $this->status = 'success';
            $this->ipData = $response;
        } else {
            $this->alert('error', 'Không thể kiểm tra IP.');
            $this->resetFields();
        }
    }

    protected function getIpData($ip)
    {
        if ($ip) {
            $response = Http::get("https://freeipapi.com/api/json/{$ip}");
        } else {
            $response = Http::get("https://freeipapi.com/api/json/");
        }
        return $response->successful() ? $response->json() : null;
    }

    public function resetFields()
    {
        $this->ip = '';
        $this->status = null;
        $this->ipData = [];
    }
}
