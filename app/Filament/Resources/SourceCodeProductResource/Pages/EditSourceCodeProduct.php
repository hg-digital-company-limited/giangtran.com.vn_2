<?php

namespace App\Filament\Resources\SourceCodeProductResource\Pages;

use App\Filament\Resources\SourceCodeProductResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSourceCodeProduct extends EditRecord
{
    protected static string $resource = SourceCodeProductResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
