<?php

namespace App\Livewire\Tools\QrCodeGenerator;

use Livewire\Component;

class Form extends Component
{
    public $accountNumber;
    public $bankName;
    public $amount;
    public $content;
    public $qrCodeUrl;
    public function mount()
    {
        $this->dispatch('select2:updated2');
    }
    public function render()
    {
        return view('livewire.tools.qr-code-generator.form');
    }
    public function updatedBankName()
    {
        $this->dispatch('select2:updated2');
    }
    public function generateQrCode()
    {
        $this->dispatch('select2:updated2');

        $this->qrCodeUrl = "https://api.vietqr.io/{$this->bankName}/{$this->accountNumber}/{$this->amount}/{$this->content}/vietqr_net_2.jpg";
    }
    public function resetFields()
{
    $this->accountNumber = '';
    $this->bankName = '';
    $this->amount = '';
    $this->content = '';
    $this->qrCodeUrl = '';
}
}
