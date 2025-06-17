<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Berita;
use App\Models\KategoriBerita;
use Illuminate\View\View;

class BeritaController extends Controller
{
    public function list(): View
    {
        $data = Berita::all();
        return view('berita.list', [ 'data' => $data ]);
    }

    public function list_kategori($id): View
    {
        $data = Berita::where("kategori_id",$id)->get();
        $dataKategori = KategoriBerita::find($id);
        return view('berita.kategori', ['data' => $data, 'kategori'=>$dataKategori ]);
    }

    public function detail($id): View
    {
        $data = Berita::find($id);
        return view('berita.detail', [ 'data' => $data]);
    }
    
}
