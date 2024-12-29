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
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

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
                    ->required()
                    ->label('Danh mục'),
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255)
                    ->label('Tên sản phẩm'),
                Forms\Components\RichEditor::make('description')
                    ->columnSpanFull()
                    ->label('Mô tả'),
                Forms\Components\TextInput::make('demo')
                    ->maxLength(255)
                    ->default(null)
                    ->label('Demo'),
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->prefix('$')
                    ->label('Giá'),
                Forms\Components\TextInput::make('link_download')
                    ->maxLength(255)
                    ->label('Link tải xuống')
                    ->default(null),
                Forms\Components\TextInput::make('purchase_count')
                    ->required()
                    ->numeric()
                    ->default(0)
                    ->label('Số lần mua'),
                Forms\Components\TextInput::make('view_count')
                    ->required()
                    ->numeric()
                    ->default(0)
                    ->label('Số lượt xem'),
                Forms\Components\FileUpload::make('image')
                    ->multiple()
                    ->required()
                    ->label('Hình ảnh'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->numeric()
                    ->sortable()
                    ->label('ID'),
                Tables\Columns\ImageColumn::make('image')
                    ->label('Hình ảnh'),
                Tables\Columns\TextColumn::make('category.name')
                    ->numeric()
                    ->sortable()
                    ->label('Danh mục'),
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->label('Tên sản phẩm'),
                Tables\Columns\TextColumn::make('demo')
                    ->searchable()
                    ->label('Demo'),
                Tables\Columns\TextColumn::make('price')
                    ->money()
                    ->sortable()
                    ->label('Giá'),
                Tables\Columns\TextColumn::make('link_download')
                    ->searchable()
                    ->label('Link tải xuống'),
                Tables\Columns\TextColumn::make('purchase_count')
                    ->numeric()
                    ->sortable()
                    ->label('Số lần mua'),
                Tables\Columns\TextColumn::make('view_count')
                    ->numeric()
                    ->sortable()
                    ->label('Số lượt xem'),

                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Ngày tạo'),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Ngày cập nhật'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make(),
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\DeleteAction::make(),
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    ExportBulkAction::make()
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
