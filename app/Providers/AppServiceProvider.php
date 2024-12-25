<?php

namespace App\Providers;

use App\Helpers\SettingsHelper;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton(
            \App\Repositories\User\UserRepositoryInterface::class,
            \App\Repositories\User\UserEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\SmmOrder\SmmOrderRepositoryInterface::class,
            \App\Repositories\SmmOrder\SmmOrderEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\SourceCodeOrder\SourceCodeOrderRepositoryInterface::class,
            \App\Repositories\SourceCodeOrder\SourceCodeOrderEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\SourceCodeProduct\SourceCodeProductRepositoryInterface::class,
            \App\Repositories\SourceCodeProduct\SourceCodeProductEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\ActivityHistory\ActivityHistoryRepositoryInterface::class,
            \App\Repositories\ActivityHistory\ActivityHistoryEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\PaymentHistory\PaymentHistoryRepositoryInterface::class,
            \App\Repositories\PaymentHistory\PaymentHistoryEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\Transaction\TransactionRepositoryInterface::class,
            \App\Repositories\Transaction\TransactionEloquentRepository::class
        );
        $this->app->singleton(
            \App\Repositories\WebService\WebServiceRepositoryInterface::class,
            \App\Repositories\WebService\WebServiceEloquentRepository::class
        );
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

    }
}
