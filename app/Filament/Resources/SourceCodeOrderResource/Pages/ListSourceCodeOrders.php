<?php

namespace App\Filament\Resources\SourceCodeOrderResource\Pages;

use App\Filament\Resources\SourceCodeOrderResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSourceCodeOrders extends ListRecords
{
    protected static string $resource = SourceCodeOrderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
