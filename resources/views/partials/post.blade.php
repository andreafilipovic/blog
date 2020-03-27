@foreach ($posts as $p)
<div class="post col-lg-6">
    <div class="post-thumbnail">
        <a href="{{url('/posts',$p->id_post)}}"><img src="{{asset('/assets/images/'.$p->photo)}}" alt="..." class="img-fluid"></a>
    </div>
    <div class="post-details">
      <div class="post-meta d-flex justify-content-between">
      </div><a href="{{url('/posts',$p->id_post)}}">
        <h3 class="h4">{{$p->title}}</h3></a>
        <p class="text-muted postDesc">{{$p->description}}</p>
      <footer class="post-footer d-flex align-items-center"><a href="{{url('/user_posts',$p->id_user)}}" class="author d-flex align-items-center flex-wrap">
          <div class="">{{$p->full_name}}</div>
          <div class="title"><span></span></div></a>
        <div class="date"><i class="icon-clock"></i> {{date('F d, Y', strtotime($p->created_at))}}</div>
        <div class="views"><i class="icon-eye"></i>{{$p->view}}</div>
      </footer>
    </div>
  </div>
@endforeach
{{$posts->links()}}