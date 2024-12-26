<?php

namespace App\Livewire\Tools\QrCodeGenerator;

use Livewire\Component;

class Form extends Component
{
    public $accountNumber;
    public $bankName;
    public $amount;
    public $content;
    public $recipientName;
    public $qrCodeUrl;
    public function render()
    {
        return view('livewire.tools.qr-code-generator.form');
    }
    public function generateQrCode()
    {
        $this->qrCodeUrl = "https://api.vietqr.io/{$this->bankName}/{$this->accountNumber}/{$this->amount}/{$this->content}/vietqr_net_2.jpg?accountName=" . urlencode($this->recipientName);
    }
    public function resetFields()
{
    $this->accountNumber = '';
    $this->bankName = '';
    $this->amount = '';
    $this->content = '';
    $this->recipientName = '';
    $this->qrCodeUrl = '';
}
}
