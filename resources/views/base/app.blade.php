<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin index Examples</title>
  <meta name="description" content="这是一个 头疼的 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="{{ url('assets/i/favicon.png') }}">
  <link rel="apple-touch-icon-precomposed" href="{{ url('assets/i/app-icon72x72@2x.png') }}" >
  <link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.4.2/css/amazeui.min.css"/>
  <link rel="stylesheet" href="{{ url('assets/css/admin.css') }}"/>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>TouT</strong> <small>后台管理模板</small>
  </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>
  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员({{ Auth::user()->name }}) <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href={{ url('auth/logout') }}><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
    @include('base.nav')
    @yield('content')
</div>


<a href="#" class="am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
  <span class="am-icon-btn am-icon-th-list"></span>
</a>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>
      <!--[if lt IE 9]>
    <script src={{ url('assets/js/jquery.min.js') }}></script>
    <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
    <script src={{ url('assets/js/amazeui.ie8polyfill.min.js') }}></script>
    <![endif]-->
    
    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src={{ url('assets/js/jquery.min.js') }}></script>
    <!--<![endif]-->
    <script src="http://cdn.amazeui.org/amazeui/2.4.2/js/amazeui.min.js"></script>
    <script src={{ url('assets/js/app.js') }}></script>
</body>
</html>