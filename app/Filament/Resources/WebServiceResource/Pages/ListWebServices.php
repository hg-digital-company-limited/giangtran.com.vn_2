<?php

namespace App\Filament\Resources\WebServiceResource\Pages;

use App\Filament\Resources\WebServiceResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListWebServices extends ListRecords
{
    protected static string $resource = WebServiceResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
