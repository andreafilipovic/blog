@extends('layouts.front.template')
@section('title')
Home    
@endsection
@section('content')
        <section style="background: url(assets/images/cover9.jpg); background-size: cover; background-position: center center" class="hero">
            <div class="container">
              <div class="row">
                <div class="col-lg-7">
                  <h1>Bigger Better Blogger - what's on your minde</h1>
                  {{-- <a href="#" class="hero-link">Discover More</a> --}}
                </div>
              </div>
              {{-- <a href=".intro" class="continue link-scroll"><i class="fa fa-long-arrow-down"></i> Scroll Down</a> --}}
            </div>
          </section>
    </div>
<div class="container">
    <div class="row">
    <main id=""class="posts-listing col-lg-8"> 
        <div class="container">
          <div class="row" id="bb"></div>
          <div class="row" id="postovi">
              @component('partials.post',['posts'=>$posts]) @endcomponent
        </div>
      </main>  
@endsection