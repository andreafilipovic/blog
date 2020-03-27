@extends('layouts.front.template')
@section('title')
{{$name->category}}
@endsection
@section('content')
<div class="container">
    <div class="row">
    <main class="posts-listing col-lg-8"> 
        <div class="container">
            <div class="col-lg-12" id="name">
                <h3> {{$name->category}} </h3>
            </div>
          <div class="row" id="postovi">
              @component('partials.post',['posts'=>$posts]) @endcomponent
        </div>
      </main>

@endsection