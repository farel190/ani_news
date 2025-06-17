@extends('layout')

@section('judul', $data->judul_berita )

@section('konten')

    <section class="hero is-success">
        <div class="hero-body">
            <p class="title">{{ $data->judul_berita }}</p>
            <p class="subtitle"> Kategori: {{ $data->kategori->nama_kategori }} </p>
        </div>
    </section>

    <section class="section has-background-primary-soft has-text-primary-soft-invert">
        
        <div class="card">
            <div class="card-content">
                <div class="content">
                    {{ $data->konten_berita }}
                    <img src="{{ asset('storage/' . $data->gambar_cover) }}" alt="Image {{ $data->judul_berita }}">
                </div>
            </div>
        </div>
        
    </section>
    
@endsection