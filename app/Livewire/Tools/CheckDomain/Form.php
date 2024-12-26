<?php
namespace App\Livewire\Tools\CheckDomain;

use Livewire\Component;
use Illuminate\Support\Facades\Http;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Form extends Component
{
    use LivewireAlert;
    public $domain;
    public $status;
    public $registrar;
    public $nameServer = [];
    public $creationDate;
    public $expirationDate;
    public $registrantName;
    public $dnssec;


    public function render()
    {
        return view('livewire.tools.check-domain.form');
    }

    public function checkDomain()
    {
        // Làm sạch tên miền
        $this->domain = $this->cleanDomain($this->domain);

        // Kiểm tra tính hợp lệ của tên miền
        if (!$this->isValidDomain($this->domain)) {
            $this->alert('error', 'Tên miền không hợp lệ. Vui lòng nhập lại.');
            $this->resetFields(); // Reset thông tin khác
            return;
        }

        $response = $this->getDomainStatus($this->domain);

        if ($response['code'] === "0") {
            $this->status = $response['message'];
            $this->registrar = $response['registrar'];
            $this->nameServer = $response['nameServer'];
            $this->creationDate = $response['creationDate'];
            $this->expirationDate = $response['expirationDate'];
            $this->registrantName = $response['registrantName'];
            $this->dnssec = $response['DNSSEC'];
        } elseif ($response['code'] === "1") {
            $this->alert('error', 'Tên miền không tồn tại.');
            $this->resetFields(); // Reset thông tin khác
        } else {
            $this->alert('error', 'Không thể kiểm tra tên miền');
        }
    }

    protected function cleanDomain($domain)
    {
        // Xóa các ký tự không cần thiết
        $domain = preg_replace('#^https?://#', '', $domain); // Xóa http:// hoặc https://
        $domain = preg_replace('#^www\.#', '', $domain); // Xóa www.
        $domain = rtrim($domain, '/'); // Xóa dấu / ở cuối
        return $domain;
    }

    protected function isValidDomain($domain)
    {
        // Kiểm tra tính hợp lệ của tên miền bằng biểu thức chính quy
        return preg_match('/^(?!-)[A-Za-z0-9-]{1,63}(?<!-)(\.[A-Za-z]{2,})+$/', $domain);
    }


    protected function getDomainStatus($domain)
    {
        $response = Http::get("https://whois.inet.vn/api/whois/domainspecify/{$domain}");

        return $response->successful() ? $response->json() : [];
    }

    public function resetFields()
    {
        $this->domain = '';
        $this->status = null;
        $this->registrar = null;
        $this->nameServer = [];
        $this->creationDate = null;
        $this->expirationDate = null;
        $this->registrantName = null;
        $this->dnssec = null;
    }
}
