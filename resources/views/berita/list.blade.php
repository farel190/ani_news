@extends('layout')

@section('judul', 'Berita')

@section('konten')

<section class="hero is-success">
        <div class="hero-body">
            <p class="title">Berita</p>
            <p class="subtitle">Berita Terbaru Seputar Anime</p>
        </div>
    </section>

    <section class="section has-background-primary-soft has-text-primary-soft-invert">

    @foreach ($data as $item)
        <div class="card">
            <div class="card-content">
                <div class="content">
                    <h2>{{ $item->judul_berita }}</h2>
                    <i>Kategori: {{ $item->kategori->nama_kategori }}</i>
                </div>
            </div>

        <footer class="card-footer">
            <a href="/berita/{{ $item->id }}" class="card-footer-item">
                Selengkapnya
            </a>
        </footer>

    </div>

    @endforeach
    
</section>

@endsection