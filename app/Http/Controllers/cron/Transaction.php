<?php

namespace App\Http\Controllers\cron;

use App\Http\Controllers\Controller;
use App\Models\Transaction as ModelsTransaction;
use App\Repositories\Transaction\TransactionRepositoryInterface;
use Illuminate\Http\Request;

class Transaction extends Controller
{
    protected $transactionRepository;
    public function transaction(TransactionRepositoryInterface $transactionRepository)
    {
        $this->transactionRepository = $transactionRepository;
        $this->transactionRepository->fetchTransactionsFromApi();
        return response()->json(['status' => 'success']);
    }
}
