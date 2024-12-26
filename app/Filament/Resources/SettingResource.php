<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SettingResource\Pages;
use App\Models\Setting;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class SettingResource extends Resource
{
    protected static ?string $model = Setting::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Settings';
    protected static ?string $navigationGroup = 'Settings';
    protected static ?int $navigationSort = 100;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Settings')
                    ->tabs([
                        // Tab Thông tin cơ bản
                        Forms\Components\Tabs\Tab::make('Thông tin cơ bản')
                            ->schema([
                                Forms\Components\Toggle::make('maintenance')
                                    ->label('Trạng thái bảo trì (maintenance)')
                                    ->default(false),
                                Forms\Components\DateTimePicker::make('deadline')
                                    ->label('Thời gian bảo trì (deadline)')
                                    ->default(null),
                                Forms\Components\FileUpload::make('avatar')
                                    ->label('Ảnh đại diện (avatar)')
                                    ->default(null),
                                Forms\Components\FileUpload::make('icon')
                                    ->label('Biểu tượng (icon)')
                                    ->default(null),
                                Forms\Components\FileUpload::make('logo')
                                    ->label('Logo (logo)')
                                    ->default(null),
                                Forms\Components\FileUpload::make('banner')
                                    ->label('Banner (banner)')
                                    ->default(null),
                                Forms\Components\FileUpload::make('loading_image')
                                    ->label('Ảnh loading (loading_image)')
                                    ->default(null),
                                Forms\Components\TextInput::make('website_name')
                                    ->label('Tên website (website_name)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\Textarea::make('website_description')
                                    ->label('Mô tả website (website_description)')
                                    ->columnSpanFull(),
                                Forms\Components\TextInput::make('contact')
                                    ->label('Link liên hệ (contact)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\RichEditor::make('notification')
                                    ->label('Thông báo (notification)')
                                    ->default(null),
                            ]),

                        // Tab Thanh toán
                        Forms\Components\Tabs\Tab::make('Thanh toán')
                            ->schema([
                                Forms\Components\TextInput::make('min_deposit')
                                    ->label('Số tiền nạp tối thiểu (min_deposit)')
                                    ->required()
                                    ->numeric()
                                    ->default(0.00),
                                Forms\Components\TextInput::make('prefix')
                                    ->label('Tiền tố (prefix)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('account_number')
                                    ->label('Số tài khoản (account_number)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('account_name')
                                    ->label('Tên tài khoản (account_name)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('account_name_qr')
                                    ->label('Tên tài khoản (account_name_qr)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('bank_name')
                                    ->label('Tên ngân hàng (bank_name)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('sepay_token')
                                    ->label('Token SePay (sepay_token)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('sepay_account_number')
                                    ->label('Số tài khoản SePay (sepay_account_number)')
                                    ->maxLength(255)
                                    ->default(null),

                            ]),

                        // Tab Telegram
                        Forms\Components\Tabs\Tab::make('Telegram')
                            ->schema([
                                Forms\Components\TextInput::make('telegram_bot_token')
                                    ->label('Token Bot Telegram (telegram_bot_token)')
                                    ->maxLength(255)
                                    ->default(null),
                                Forms\Components\TextInput::make('telegram_chat_id')
                                    ->label('Chat ID Telegram (telegram_chat_id)')
                                    ->maxLength(255)
                                    ->default(null),
                            ]),

                    ])->columnSpanFull(),


            ]);
    }


    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Ngày cập nhật')
                    ->dateTime()
                    ->sortable()
                ,
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make()->label('Chỉnh sửa'),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()->label('Xóa'),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSettings::route('/'),
            'create' => Pages\CreateSetting::route('/create'),
            'edit' => Pages\EditSetting::route('/{record}/edit'),
        ];
    }
}
