<?php

namespace App\Filament\Resources\SourceCodeOrderResource\Widgets;

use App\Models\SourceCodeOrder;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class SourceCodeOrderOverview extends BaseWidget
{
    protected function getStats(): array
    {
        // Retrieve order statistics
        $totalOrders = SourceCodeOrder::count();
        $todayOrders = SourceCodeOrder::whereDate('created_at', today())->count();
        $monthlyOrders = SourceCodeOrder::whereMonth('created_at', now()->month)->count();

        // Calculate total revenue
        $totalRevenue = SourceCodeOrder::sum('unit_price');
        $todayRevenue = SourceCodeOrder::whereDate('created_at', today())->sum('unit_price');
        $monthlyRevenue = SourceCodeOrder::whereMonth('created_at', now()->month)->sum('unit_price');

        return [
            Stat::make('Doanh Thu Hôm Nay', number_format($todayRevenue) . ' VNĐ')
                ->description('Doanh thu từ đơn hàng mã nguồn hôm nay.')
                ->color('warning')
                ->icon('heroicon-o-calendar'),

            Stat::make('Doanh Thu Tháng Này', number_format($monthlyRevenue) . ' VNĐ')
                ->description('Doanh thu từ đơn hàng mã nguồn trong tháng này.')
                ->color('success')
                ->icon('heroicon-o-credit-card'),

            Stat::make('Đơn Hàng Hôm Nay', $todayOrders)
                ->description('Số đơn hàng mã nguồn đã đặt hôm nay.')
                ->color('warning')
                ->icon('heroicon-o-calendar'),

            Stat::make('Đơn Hàng Tháng Này', $monthlyOrders)
                ->description('Số đơn hàng mã nguồn đã đặt trong tháng này.')
                ->color('success')
                ->icon('heroicon-o-shopping-cart'),
        ];
    }
}
