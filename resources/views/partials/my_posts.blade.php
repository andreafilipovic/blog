<div class="row">
<div class="post col-lg-6">
    <div class="post-thumbnail">
        <a href="{{url('/posts',$p->id_post)}}"><img src="{{asset('/assets/images/'.$p->photo)}}" alt="..." class="img-fluid"></a>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="post-details">
      <div class=" d-flex justify-content-between">
      </div><a href="{{url('/posts',$p->id_post)}}">
        <h3 class="h4">{{$p->title}}</h3></a>
        <p class="text-muted postDesc">{{$p->description}}</p>
      <footer class="edidtButtons post post-footer d-flex align-items-center"><a href="{{url('/user_posts',$p->id_user)}}" class="author d-flex align-items-center flex-wrap">
          <div class="">{{$p->full_name}}</div>
          <div class="title"><span></span></div></a>
        <div class="date"><i class="icon-clock"></i> {{date('F d, Y', strtotime($p->created_at))}}</div>
        <div class="views"><i class="icon-eye"></i>{{$p->view}}</div>
      </footer>
    </div>
    @if(!isset($user) || ((session()->has('user')) && $id==session()->get('user')->id_user))
    <div class="edit">
        <a href="{{route('user_posts.edit',$p->id_post)}}"><button type="button" class="btn btn-info btn-sm"><i class="fa fa-pencil" aria-hidden="true"></i></button></a>
       <button type="button" class="btn btn-danger btn-sm" id="btnDeletePost" data-id="{{$p->id_post}}"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
      <form action="" id="deleteForma" method="post">
        @method('delete')
        @csrf
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Post</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <p class="form-group">Are you sure you want to delete this post?</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No, go back</button>
                <button type="submit" class="btn btn-danger">Yes, delete</button>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
    @endif
  </div>
  </div>
{{-- </div> --}}
