@extends('layouts.front.template')
@section('title')
Search    
@endsection
@section('content')
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