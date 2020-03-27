@extends("layouts.front.template")
@section('title')
Contact   
@endsection
@section("content")
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
                       <h5>Contact</h5>
                    </div>
                    <div class="card-body">
                        <form action="{{url('/contact/send')}}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" class="form-control" placeholder="example@example">
                            </div>
                            <div class="form-group">
                                <label for="subject">Subject</label>
                                <input type="text" name="subject" id="subject" class="form-control" placeholder="Subject">
                            </div>
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea name="message" id="message" cols="5" rows="5" class="form-control" placeholder="Message..."></textarea>
                            </div>
                          <div class="form-group">
                            <button type="submit" class="btn btn-info">
                                Send Message
                            </button>
                          </div>
                        </form>
                    </div>
                  </div>
            </div>
        </main>
@endsection