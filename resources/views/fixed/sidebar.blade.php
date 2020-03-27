{{-- <div class="container">
    <div class="row"> --}}
      <div class="col-lg-4">
        <aside class="">
            <div class="widget search">
              <header>
                <h3 class="h6">Search the blog</h3>
              </header>
              <div class="search-form">
                <div class="form-group">
                  <input type="search" placeholder="What are you looking for?" id="searchPost">
                  <i class="icon-search submit"></i>
                </div>
              </div>
            </div>
            <div class="widget latest-posts">
              <header>
                <h3 class="h6">Latest Posts</h3>
              </header>
              <div class="blog-posts">
                @foreach ($latest_posts as $l)
                <a href="{{url('/posts',$l->id_post)}}">
                  <div class="item d-flex align-items-center">
                    <div class="image"><img src="{{asset('/assets/images/'.$l->photo)}}" alt="..." class="img-fluid"></div>
                    <div class="title"><strong>{{$l->title}}</strong>
                      <div class="d-flex align-items-center">
                        <div class="views"><i class="icon-eye"></i>{{$l->view}}</div>
                      </div>
                    </div>
                  </div>
                </a>
                @endforeach
              </div>
            </div>
            <div class="widget categories">
              <header>
                <h3 class="h6">Categories</h3>
              </header>
              @foreach ($categories as $ca)
              <div class="item d-flex justify-content-between"><a href="{{url('/posts_category',$ca->id_category)}}">{{$ca->category}}</a></div>
              @endforeach
            </div>
          </aside>
        </div>
    {{-- </div>
</div> --}}