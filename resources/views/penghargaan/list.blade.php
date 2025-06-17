@extends('layout')

@section('judul', 'Penghargaan')

@section('konten')

    <section class="hero is-success">
        <div class="hero-body">
            <p class="title">Penghargaan</p>
            <p class="subtitle">Anime Awards 2023</p>
        </div>
    </section>

    <section class="section has-background-primary-soft has-text-primary-soft-invert">

        @foreach ($data as $item)
            <div class="card">
                <div class="card-content">
                    <div class="content">
                        {{ $item->judul_penghargaan }}
                    </div>
                </div>
                <footer class="card-footer">
                    <a href="/penghargaan/{{ $item->id }}" class="card-footer-item">
                        Selengkapnya
                    </a>
                </footer>
            </div>
        @endforeach
    </section>
@endsection