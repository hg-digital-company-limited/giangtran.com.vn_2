<?php

namespace App\Filament\Resources\SourceCodeCategoryResource\Pages;

use App\Filament\Resources\SourceCodeCategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSourceCodeCategory extends EditRecord
{
    protected static string $resource = SourceCodeCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
