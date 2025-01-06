<?php

namespace App\Livewire\Tools\QrCodeGenerator;

use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Form extends Component
{
    use LivewireAlert;
    public $accountNumber;
    public $bankName;
    public $amount = 100000;
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
        if ($this->content == '') {
            $this->alert('error', 'Vui lòng nhập nội dung');
        $this->dispatch('select2:updated2');
            return;
        }
        $this->qrCodeUrl = "https://api.vietqr.io/{$this->bankName}/{$this->accountNumber}/{$this->amount}/{$this->content}/vietqr_net_2.jpg";
        $this->dispatch('select2:updated2');
    }
    public function resetFields()
{
    $this->accountNumber = '';
        $this->bankName = '';
        $this->amount = '';
        $this->content = '';
        $this->qrCodeUrl = '';
        $this->dispatch('select2:updated2');
    }
}
