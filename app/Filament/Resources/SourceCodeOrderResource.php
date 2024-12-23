<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SourceCodeOrderResource\Pages;
use App\Filament\Resources\SourceCodeOrderResource\RelationManagers;
use App\Models\SourceCodeOrder;
use App\Models\SourceCodeProduct;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SourceCodeOrderResource extends Resource
{
    protected static ?string $model = SourceCodeOrder::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Đơn Hàng';

    protected static ?string $navigationGroup = 'Source Code';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('user_id')
                    ->label('Người mua')
                    ->options(User::all()->pluck('email', 'id'))
                    ->searchable()
                    ->required(),
                Forms\Components\Select::make('source_code_product_id')
                    ->label('Sản phẩm')
                    ->options(SourceCodeProduct::all()->pluck('name', 'id'))
                    ->searchable()
                    ->required(),
                Forms\Components\TextInput::make('unit_price')
                    ->label('Đơn giá')
                    ->numeric()
                    ->required(),
                Forms\Components\TextInput::make('link_download')
                    ->label('Liên kết tải xuống')
                    ->maxLength(255)
                    ->default(null),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('user.email')
                    ->label('Người mua')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('product.name')
                    ->label('Tên Sản Phẩm')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('unit_price')
                    ->label('Đơn giá')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('link_download')
                    ->label('Liên kết tải xuống')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày đặt hàng')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Ngày cập nhật')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
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
            'index' => Pages\ListSourceCodeOrders::route('/'),
            'create' => Pages\CreateSourceCodeOrder::route('/create'),
            'edit' => Pages\EditSourceCodeOrder::route('/{record}/edit'),
        ];
    }
}
