@extends('layout')
@section('judul', $data->judul_penghargaan )
@section('konten')
    <section class="hero is-success">
        <div class="hero-body">
            <p class="title">Penghargaan</p>
            <p class="subtitle"> {{ $data->judul_penghargaan }} </p>
        </div>
    </section>
    <section class="section has-background-primary-soft has-text-primary-soft-invert">
        <div class="card">
            <div class="card-content">
                <div class="content">
                    {{ $data->konten_penghargaan }}
                </div>
            </div>
        </div>
        <a href="/penghargaan" class="button is-info">Kembali</a>
 
    </section>
    
@endsection