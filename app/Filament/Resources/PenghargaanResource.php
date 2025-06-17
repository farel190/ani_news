<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PenghargaanResource\Pages;
use App\Filament\Resources\PenghargaanResource\RelationManagers;
use App\Models\Penghargaan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PenghargaanResource extends Resource
{
    protected static ?string $model = Penghargaan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('judul_penghargaan')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('konten_penghargaan')
                    ->required()
                    ->columnSpanFull(),
                Forms\Components\DateTimePicker::make('updated_at')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('judul_penghargaan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable(),
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

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPenghargaan::route('/'),
            'create' => Pages\CreatePenghargaan::route('/create'),
            'edit' => Pages\EditPenghargaan::route('/{record}/edit'),
        ];
    }
}
