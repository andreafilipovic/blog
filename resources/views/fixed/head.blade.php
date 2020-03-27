<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> BetterBlogz | @yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{ asset("vendor/bootstrap/css/bootstrap.min.css")}}">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{asset("vendor/font-awesome/css/font-awesome.min.css")}}">
    <!-- Custom icon font-->
    <link rel="stylesheet" href="{{asset("vendor/css/fontastic.css")}}">
    <!-- Google fonts - Open Sans-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <!-- Fancybox-->
    <link rel="stylesheet" href="{{asset("vendor/@fancyapps/fancybox/jquery.fancybox.min.css")}}">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="{{asset("vendor/css/style.default.css")}}" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="{{asset("vendor/css/custom.css")}}">
    <link rel="stylesheet" href="{{asset("vendor/css/animate.css")}}">
    
    <script>
      var baseUrl='<?php echo url('/')?>'
    </script>
    @yield('css')
    <link href="{{ asset('/assets/css/style.css')}}" rel="stylesheet" />
    <!-- Favicon-->
    <link rel="shortcut icon" href="{{asset('/assets/images/'.'favicon.ico')}}">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>