@extends('layout')

@section('judul', 'KategoriBerita')

@section('konten')

    <section class="hero is-success">
        <div class="hero-body">
            <p class="title">Kategori Berita</p>
            <p class="subtitle">Berita Terbaru Seputar Anime</p>
        </div>
    </section>

    <section class="section has-background-primary-soft has-text-primary-soft-invert">

    @foreach ($data as $item)
    <div class="card">
        <div class="card-content">
            <div class="content">
                {{ $item->nama_kategori }}
            </div>
        </div>
        <footer class="card-footer">
            <a href="/kategori-berita/{{ $item->id }}" class="card-footer-item">
                Selengkapnya
            </a>
        </footer>
    </div>

        @endforeach

</section>

@endsection