@extends('layout')

@section('judul', $data->judul_berita )

@section('konten')

    <section class="hero is-success">
        <div class="hero-body">
            <p class="title">{{ $data->judul_berita }}</p>
            <p class="subtitle">Kategori: {{ $data->$kategori->nama_kategori }}</p>
        </div>
    </section>

    <section class="section has-background-primary-soft has-text-primary-soft-invert">

    @foreach ($data as $item)
    <div class="card">
        <div class="card-content">
            <div class="content">
                {{ $item->konten_berita }}
            </div>
        </div>
    </div>

        @endforeach

</section>

@endsection