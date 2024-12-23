<?php

namespace App\Filament\Resources\SourceCodeCategoryResource\Pages;

use App\Filament\Resources\SourceCodeCategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSourceCodeCategories extends ListRecords
{
    protected static string $resource = SourceCodeCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
