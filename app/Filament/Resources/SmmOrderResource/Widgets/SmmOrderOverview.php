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

        // Calculate total revenue
        $totalRevenue = SmmOrder::sum('total_price');
        $todayRevenue = SmmOrder::whereDate('created_at', today())->sum('total_price');

        return [

        Stat::make('Doanh Thu Hôm Nay', number_format($todayRevenue) . ' VNĐ')
        ->description('Doanh thu từ đơn hàng SMM hôm nay.')
            ->color('warning')
            ->icon('heroicon-o-calendar'),

            Stat::make('Tổng Doanh Thu', number_format($totalRevenue) . ' VNĐ')
            ->description('Tổng doanh thu từ tất cả đơn hàng SMM.')
            ->color('success')
            ->icon('heroicon-o-credit-card'), // Changed to a suitable icon



            Stat::make('Đơn Hàng SMM Hôm Nay', $todayOrders)
                ->description('Số đơn hàng SMM đã đặt hôm nay.')
                ->color('warning')
                ->icon('heroicon-o-calendar'),

                Stat::make('Tổng Đơn Hàng SMM', $totalOrders)
                ->description('Tổng số đơn hàng SMM đã đặt.')
                ->color('success')
                ->icon('heroicon-o-shopping-cart'),

        ];
    }
}
