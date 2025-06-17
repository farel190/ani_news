<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\KategoriBerita;
use Illuminate\View\View;

class KategoriBeritaController extends Controller
{
    public function list(): View
    {
        $data = KategoriBerita::all();
        return view('kategori_berita.list', [ 'data' => $data]);
    }
}
