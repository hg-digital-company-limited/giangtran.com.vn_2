<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SourceCodeProductResource\Pages;
use App\Filament\Resources\SourceCodeProductResource\RelationManagers;
use App\Models\SourceCodeProduct;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SourceCodeProductResource extends Resource
{
    protected static ?string $model = SourceCodeProduct::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Sản Phẩm';

    protected static ?string $navigationGroup = 'Source Code';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('category_id')
                    ->relationship('category', 'name')
                    ->required(),
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\RichEditor::make('description')
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('demo')
                    ->maxLength(255)
                    ->default(null),
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->prefix('$'),
                Forms\Components\TextInput::make('link_download')
                    ->maxLength(255)
                    ->label('Link download')
                    ->default(null),
                Forms\Components\TextInput::make('purchase_count')
                    ->required()
                    ->numeric()
                    ->default(0),
                Forms\Components\TextInput::make('view_count')
                    ->required()
                    ->numeric()
                    ->default(0),
                Forms\Components\Repeater::make('images')
                    ->schema([
                        Forms\Components\TextInput::make('image')
                            ->maxLength(255)
                            ,
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('category.name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('demo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('price')
                    ->money()
                    ->sortable(),
                Tables\Columns\TextColumn::make('link_download')
                    ->searchable()
                    ->label('Link download'),
                Tables\Columns\TextColumn::make('purchase_count')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('view_count')
                    ->numeric()
                    ->sortable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }
    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSourceCodeProducts::route('/'),
            'create' => Pages\CreateSourceCodeProduct::route('/create'),
            'edit' => Pages\EditSourceCodeProduct::route('/{record}/edit'),
        ];
    }
}
