<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('beranda');
    });

Route::get('/profil', function () {
    return view('profil');
    });

Route::get(
    '/kategori',
    [ App\Http\Controllers\KategoriBeritaController::class, 'list'
]);

Route::get(
    '/berita',
    [ App\Http\Controllers\BeritaController::class, 'list'
]);

Route::get(
    '/kategori-berita/{id}',
    [ App\Http\Controllers\BeritaController::class, 'list_kategori'
]);

Route::get(
    '/berita/{id}',
    [ App\Http\Controllers\BeritaController::class, 'detail'
]);

Route::get(
    '/penghargaan', 
    [ App\Http\Controllers\PenghargaanController::class, 'list' ]
    );
    
Route::get(
    '/penghargaan/{id}', 
    [ App\Http\Controllers\PenghargaanController::class, 'detail' ]
    );