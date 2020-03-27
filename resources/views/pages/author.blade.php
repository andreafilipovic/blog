@extends('layouts.front.template')
@section('title')
Author    
@endsection
@section('content')
<div class="container">
    <div class="row">
    <main id=""class="posts-listing col-lg-8"> 
        <div class="container">
          <div class="row">
            <div class="">
                <img src="{{asset('/assets/images/ja.jpg')}}" alt="Andrea Filipovic" class="img-fluid">
            </div>
            <div class="post-details">
                  <h3 class="h4">Andrea Filipovic 31/17</h3></a>
                  <p class="text-muted"> Visoka škola strukovnih studija za informacione i komunikacione tehnologije</p>
				  <p class="text-muted">Smer: Internet tehnologije</p>
				  <p class="text-muted">Modul: Web programiranje</p>
				  <p class="text-muted">Sajt pravljen iskljucivo za svrhu predmeta</p>
             
            </div>
        </div>
        </div>
      </main>  
@endsection