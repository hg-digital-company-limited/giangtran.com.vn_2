<?php

namespace App\Filament\Resources\WebServiceResource\Pages;

use App\Filament\Resources\WebServiceResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditWebService extends EditRecord
{
    protected static string $resource = WebServiceResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
