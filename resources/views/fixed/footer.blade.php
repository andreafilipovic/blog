</div>
<!--row-->
</div>
<!--container-->


<footer class="main-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="logo">
            <h6 class="text-white">Info</h6>
          </div>
          <div class="contact-details">
            <p>53 Broadway, Broklyn, NY 11249</p>
            <p>Phone: (020) 123 456 789</p>
            <p>Email: nick@gmail.com</p>
            <ul class="social-menu">
              <li class="list-inline-item"><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
              <li class="list-inline-item"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
              <li class="list-inline-item"><a href="https://instagram.com"><i class="fa fa-instagram"></i></a></li>
              <li class="list-inline-item"><a href="https://www.behance.net/"><i class="fa fa-behance"></i></a></li>
              <li class="list-inline-item"><a  href="https://pinterest.com"><i class="fa fa-pinterest"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-4">
          
          <div class="menus d-flex fo  ">
            <ul class="list-unstyled">
              <h6>Useful Links</h6>
              <li class="nav-item"><a href="dokumentacija.pdf" download>Documentacion</a></li>
              {{-- <li class="nav-item"><a href="sitemap.xml">Sitemap</a></li> --}}
              <li class="nav-item"><a href="{{url('/author')}}">Author</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-4">
          <div class="logo">
            <h6 class="text-white">Better Blogz</h6>
            <p>“And by the way, everything in life is writable about if you have the outgoing guts to do it, and the imagination to improvise. The worst enemy to creativity is self-doubt.”</p>
            
          </div>
        </div>
      </div>
    </div>
    <div class="copyrights">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <p>&copy; 2017. All rights reserved. Your great site.</p>
          </div>
          <div class="col-md-6 text-right">
            <p>Template By <a href="https://bootstrapious.com/p/bootstrap-carousel" class="text-white">Bootstrapious</a>
              <!-- Please do not remove the backlink to Bootstrap Temple unless you purchase an attribution-free license @ Bootstrap Temple or support us at http://bootstrapious.com/donate. It is part of the license conditions. Thanks for understanding :)                         -->
            </p>
          </div>
        </div>
      </div>
    </div>


  </footer>
  <!-- JavaScript files-->
  @section("javascript")
  <script src="{{ asset("vendor/jquery/jquery.min.js")}}"></script>
  <script src="{{ asset("vendor/popper.js/umd/popper.min.js")}}"> </script>
  <script src="{{ asset("vendor/bootstrap/js/bootstrap.min.js")}}"></script>
  <script src="{{ asset("vendor/jquery.cookie/jquery.cookie.js")}}"> </script>
  <script src="{{ asset("vendor/@fancyapps/fancybox/jquery.fancybox.min.js")}}"></script>
  <script src="{{ asset("vendor/js/front.js")}}"></script>
  <script src="{{ asset("assets/js/main.js")}}"></script>
  @show
</body>
</html>