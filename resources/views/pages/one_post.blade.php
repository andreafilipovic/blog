@extends('layouts.front.template')
@section('title')
{{$post->title}}   
@endsection
@section('content')
<div class="container">
    <div class="row">
        <main class="post blog-post col-lg-8"> 
            <div class="container">
            <div class="post-single">
                <div class="post-thumbnail oneImage"><img src="{{asset('/assets/images/'.$post->photo)}}" alt="..." class="img-fluid"></div>
                <div class="post-details">
                <div class="post-meta d-flex justify-content-between">
                    <div class="category">
                        @foreach($post->postCategories as $c)
                        <a href="{{url('/posts_category',$c->id_category)}}">{{$c->category}}</a>
                        @endforeach
                    </div>
                </div>
                <h1>{{$post->title}}<a href="#"><i class="fa fa-bookmark-o"></i></a></h1>
                <div class="post-footer d-flex align-items-center flex-column flex-sm-row"><a href="{{url('/user_posts',$post->id_user)}}" class="author d-flex align-items-center flex-wrap">
                    <div class=""></div>
                    <div class="title"><span>{{$post->full_name}}</span></div></a>
                    <div class="d-flex align-items-center flex-wrap">       
                    <div class="date"><i class="icon-clock"></i>{{date('F d, Y', strtotime($post->created_at))}}</div>
                    <div class="views"><i class="icon-eye"></i>{{$post->view}}</div>
                    <div class="comments meta-last"><i class="icon-comment"></i>{{count($comm)}}</div>
                    </div>
                </div>
                <div class="post-body">
                    <p>{{$post->description}}</p>
                    <div>{!! $post->content !!}</div>
                </div>

                <div class="post-comments">
                    <header>
                    <h3 class="h6">Post Comments<span class="no-of-comments">({{count($comm)}})</span></h3>
                    </header>
                    <div id="allComments">
                        @foreach ($comm as $c)
                            @component('partials.comment',["c"=>$c])
                            @endcomponent
                        @endforeach
                    </div>
                </div>
                @if(session()->has('user'))
                <div class="add-comment">
                    <header>
                    <h3 class="h6">Leave a comment</h3>
                    </header>
                    <form  class="commenting-form">
                    <div class="row">
                        <input type="hidden" name="post" id="id_post" value="{{$post->id_post}}">
                        <input type="hidden" name="user" id="id_user" value="{{session()->get('user')->id_user}}">
                        <div class="form-group col-md-12">
                        <textarea name="usercomment" id="usercomment" placeholder="Type your comment" class="form-control"></textarea>
                        </div>
                        <div class="form-group col-md-12 text-muted" id="text-error"></div>
                        <div class="form-group col-md-12">
                        <button type="submit" class="btn btn-secondary" id="btnComment">Submit Comment</button>
                        </div>
                    </div>
                    </form>
                    @isset($errors)
                    @foreach($errors->all() as $error)
                            {{ $error }}
                    @endforeach
                    @endisset
                </div>
                @else
                <a href="{{url('/login')}}"><button class="btn btn-info">Login To Comment</button></a>
                @endif
                </div>
            </div>
            </div>
        </main>
@endsection
