@extends('layouts.front.template')
@section('title')
@if(isset($post)) Edit Post @else Create Post  @endif
@endsection
@section('content')
<div class="container">
    <div class="row">
        <main class="col-lg-8">
            <div class="flash-message">
                @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                  @if(Session::has('alert-' . $msg))
                  <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }}</p>
                  @endif
                @endforeach
              </div>
            <div class="card card-default">
                <div class="card-header">
                    {{isset($post)? "Edit Post" : "New Post"}}
                </div>
                <div class="card-body">
                    <form action="{{isset($post)? route('user_posts.update',$post->id_post):route('user_posts.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @if(isset($post))
                        @method('PUT')
                        @endif
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" name="title" id="title" class="form-control" value="{{isset($post)? $post->title : ''}}">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" id="description" cols="5" rows="5" class="form-control">{{isset($post)? $post->description : ''}}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="content">Content</label>
                            <input id="content" type="hidden" name="content" value="{{isset($post)? $post->content : ''}}">
                            <trix-editor input="content" ></trix-editor>
                        </div>
                        <div class="form-group">
                            <label for="categories[]">Categories</label><br>
                            @if(isset($post))
                            @foreach ($categories as $c)
                                 @if($post->postCategories->contains('category',$c->category))
                                 <input type="checkbox" name="categories[]" checked value="{{$c->id_category}}" />
                                {{$c->category}}
                                 @else
                                 <input type="checkbox" name="categories[]" value="{{$c->id_category}}" />{{$c->category}}
                                 @endif   
                            @endforeach
                            @else
                            @foreach ($categories as $c)
                                 <input type="checkbox" name="categories[]" value="{{$c->id_category}}" />
                                {{$c->category}}
                            @endforeach
                            @endif
                        </div>
                        @isset($post)
                        <div class="form-group">
                            <img src="{{asset('/assets/images/'.$post->photo)}}" alt="" style="width: 100%">
                        </div>
                        @endisset
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" name="image" id="image" class="form-control" >
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">
                                {{isset($post)? "Update Post":"Create Post"}}

                            </button>
                        </div>
                    </form>
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
                      </div>
                </div>
            </div>
    
        </main>
    {{-- </div>
</div> --}}

@endsection
@section('javascript')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.1/trix.js"></script>
    
@endsection
@section('css')
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.1/trix.css"> 
   
@endsection


