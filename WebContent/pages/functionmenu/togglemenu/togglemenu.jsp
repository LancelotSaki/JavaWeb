<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>隐藏侧边栏网页布局模板</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="default.css"  rel="Stylesheet"  type="text/css"/>
    <link href="style.min.css"  rel="Stylesheet"  type="text/css"/>
    
 </head>
 
<body>
	<div id="wrapper" class="wrapper">
	  <header class="header htmleaf-header">
			<h1>Material Design隐藏侧边栏网页布局模板 <span>A Material Design Off Canvas Menu</span></h1>
			<div class="htmleaf-links">
				<a class="htmleaf-icon icon-htmleaf-home-outline" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
				<a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="http://www.htmleaf.com/html5/html5muban/201508022345.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
			</div>
		</header>
	  <main>
	    <div class="container">
	      <section>
	        <h1>Material Menu</h1>
	        <div id="github-icons"></div>
	        <p>段落一</p>
	        <p>段落二</p>
	      </section>
	    </div>
	  </main>
	</div><!-- /wrapper -->

	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
	<nav id="mm-menu" class="mm-menu">
	  <div class="mm-menu__header">
	    <h2 class="mm-menu__title">Nick Salloum</h2>
	  </div>
	  <ul class="mm-menu__items">
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-home"></i> Home</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-person"></i> Profile</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-inbox"></i> Inbox</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-favorite"></i> Favourites</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-settings"></i> Settings</span>
	      </a>
	    </li>
	  </ul>
	</nav><!-- /nav -->
	 <script type="text/javascript" src="materialMenu.min.js"></script>
    <script>
	  var menu = new Menu;
	</script>
</body>




</html>