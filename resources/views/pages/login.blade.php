@extends('layouts.front.template')
@section('title')
Sign in    
@endsection
@section('content')
<div class="container">
    <div class="row">
        <main class="posts-listing col-lg-8"> 
            <div class="container">
                <div class="col-md-12">
                    @isset($errors)
                    @if($errors->any())
                    <div class="alert alert-danger">
                        <ul class="list-group">
                                 @foreach($errors->all() as $poruka)
                                        <li class="list-group-item">
                                            {{ $poruka }} <br/>
                                        </li>
                                 @endforeach
                        </ul>
                    </div>
                    @endif
                    @endisset
                    <div class="flash-message">
                        @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                          @if(Session::has('alert-' . $msg))
                          <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }}</p>
                          @endif
                        @endforeach
                      </div>
                  </div>
                  <div class="card card-default">
                    <div class="card-header">
                       <h5>Sign in with your account</h5>
                    </div>
                    <div class="card-body">
                        <form action="{{ url("/login") }}" method="POST" class="animated fadeIn">
                            @csrf
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" class="form-control" placeholder="example@example">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="password...">
                            </div>
                          <div class="form-group">
                            <button type="submit" class="btn btn-info">
                               Login
                            </button>
                          </div>
                          <div class="form-group">
                            <a href="{{url('/register')}}">Sign up?</a>
                          </div>
                        </form>
                    </div>
                  </div>
            </div>
        </main>
@endsection
