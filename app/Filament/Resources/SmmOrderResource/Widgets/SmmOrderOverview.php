<?php

namespace App\Filament\Resources\SmmOrderResource\Widgets;

use App\Models\SmmOrder;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class SmmOrderOverview extends BaseWidget
{
    protected function getStats(): array
    {
        // Retrieve order statistics
        $totalOrders = SmmOrder::count();
        $todayOrders = SmmOrder::whereDate('created_at', today())->count();
        $monthlyOrders = SmmOrder::whereMonth('created_at', now()->month)->count();

        // Calculate total revenue
        $totalRevenue = SmmOrder::sum('total_price');
        $todayRevenue = SmmOrder::whereDate('created_at', today())->sum('total_price');
        $monthlyRevenue = SmmOrder::whereMonth('created_at', now()->month)->sum('total_price');

        return [
            Stat::make('Doanh Thu Hôm Nay', number_format($todayRevenue) . ' VNĐ')
                ->description('Doanh thu từ đơn hàng SMM hôm nay.')
                ->color('warning')
                ->icon('heroicon-o-calendar'),

            Stat::make('Doanh Thu Tháng Này', number_format($monthlyRevenue) . ' VNĐ')
                ->description('Doanh thu từ đơn hàng SMM trong tháng này.')
                ->color('success')
                ->icon('heroicon-o-credit-card'),

            Stat::make('Đơn Hàng Hôm Nay', $todayOrders)
                ->description('Số đơn hàng SMM đã đặt hôm nay.')
                ->color('warning')
                ->icon('heroicon-o-calendar'),

            Stat::make('Đơn Hàng Tháng Này', $monthlyOrders)
                ->description('Số đơn hàng SMM đã đặt trong tháng này.')
                ->color('success')
                ->icon('heroicon-o-shopping-cart'),
        ];
    }
}
