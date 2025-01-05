<?php

namespace App\Filament\Widgets;

use App\Models\AccessHistory;
use Filament\Widgets\ChartWidget;

class AccessStatisticsWidget extends ChartWidget
{
    protected static ?string $heading = 'Số lượt truy cập trong 30 ngày';

    protected function getData(): array
    {
        // Lấy số lượt truy cập trong 30 ngày gần nhất
        $records = AccessHistory::where('date', '>=', now()->subDays(30))
            ->orderBy('date')
            ->get();

        // Lấy dữ liệu cho labels và datasets
        $labels = $records->pluck('date')->map(function ($date) {
            return \Carbon\Carbon::parse($date)->format('d/m/Y');
        })->toArray();

        $data = $records->pluck('visit_count')->toArray();

        return [
            'labels' => $labels,
            'datasets' => [
                [
                    'label' => 'Số lượt truy cập',
                    'data' => $data,
                    'backgroundColor' => 'rgba(75, 192, 192, 0.2)',
                    'borderColor' => 'rgba(75, 192, 192, 1)',
                    'borderWidth' => 1,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'bar'; // Loại biểu đồ là cột
    }
}
