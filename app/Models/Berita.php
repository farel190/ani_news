<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Berita extends Model
{
    use HasFactory;

    protected $table = 'berita';

    protected $fillable = [
        "kategori_id",
        "judul_berita",
        "konten_berita",
        "gambar_cover",
        "lampiran",
        "lampiran_nama"
    ];

    public function kategori(): BelongsTo
    {
        return $this->belongsTo(KategoriBerita::class);
    }

    protected $casts =[
        'lampiran' => 'array',
        'lampiran_nama' => 'array',
    ];
}
