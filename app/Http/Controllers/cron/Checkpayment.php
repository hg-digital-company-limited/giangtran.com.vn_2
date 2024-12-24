<?php

namespace App\Http\Controllers\cron;

use App\Helpers\SettingsHelper;
use App\Http\Controllers\Controller;
use App\Repositories\PaymentHistory\PaymentHistoryRepositoryInterface;
use App\Repositories\SmmOrder\SmmOrderRepositoryInterface;
use Illuminate\Support\Facades\Auth;

class Checkpayment extends Controller
{
        protected $smmOrderRepository;
    protected $paymentHistoryRepository;
    public function __construct(SmmOrderRepositoryInterface $smmOrderRepository)
    {
        $this->smmOrderRepository = $smmOrderRepository;
    }
    public function checkPayment(PaymentHistoryRepositoryInterface $paymentHistoryRepository)
    {
        $this->paymentHistoryRepository = $paymentHistoryRepository;
        $code = SettingsHelper::getSetting('prefix') .  strtoupper(string: Auth::user()->username);
        $userId = Auth::user()->id;
        // Gọi hàm từ model và truyền user_id
        $result = $this->paymentHistoryRepository->createPaymentHistory($code, $userId);
        return response()->json($result);
    }
    // public function checkInvoice($invoice_code , InvoiceRepositoryInterface $invoiceRepository)
    // {
    //     $this->invoiceRepository = $invoiceRepository;
    //     $invoice = $this->invoiceRepository->getInvoiceByCode($invoice_code);
    //     if ($invoice) {
    //         $userId = $invoice->user_id;
    //         $this->smmOrderRepository->updatePaymentStatus($invoice->order_code, 'paid');
    //         $result = $this->invoiceRepository->updateInvoicePayment($invoice_code, $userId);
    //         return response()->json($result);
    //     }
    //     return response()->json(['status' => 'error', 'message' => 'Hóa đơn không tồn tại hoặc đã thanh toán']);
    // }
}
