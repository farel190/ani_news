<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Penghargaan;
use Illuminate\View\View;

class PenghargaanController extends Controller
{
    public function list(): View
    {
        $data = Penghargaan::all();
        return view('penghargaan.list', ['data' => $data ]);
    }
    public function detail($id): View
    {
        $data = Penghargaan::find($id);
        return view('penghargaan.detail', [ 'data' => $data]);
    }
}
