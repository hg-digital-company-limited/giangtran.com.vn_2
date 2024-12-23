<?php

namespace App\Filament\Resources\SourceCodeProductResource\Pages;

use App\Filament\Resources\SourceCodeProductResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSourceCodeProducts extends ListRecords
{
    protected static string $resource = SourceCodeProductResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
