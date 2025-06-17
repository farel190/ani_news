@extends('layout')

@section('judul', 'Berita'.$kategori->nama_kategori )

@section('konten')

    <section class="hero is-success">
        <div class="hero-body">
            <p class="title">Berita</p>
            <p class="subtitle">Kategori: {{ $kategori->nama_kategori }}</p>
        </div>
    </section>

    <section class="section has-background-primary-soft has-text-primary-soft-invert">

    @foreach ($data as $item)
    <div class="card">
        <div class="card-content">
            <div class="content">
                {{ $item->judul_berita }}
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