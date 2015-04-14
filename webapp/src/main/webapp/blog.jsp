<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>个人博文</title>
<!-- Bootstrap -->
<link href="common/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="common/css/blue.css" rel="stylesheet" type="text/css" media="all" />
<!----font-Awesome----->
   	<link rel="stylesheet" href="common/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!-- start plugins -->
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script src="common/js/menu.js" type="text/javascript"></script>
</head>
<body>
<jsp:include flush="true" page="indexheader.jsp"></jsp:include>
<div class="main_btm1"><!-- start main_btm -->
<div class="container">
	<div class="blog"><!-- start blog -->
			<div class="blog_main col-md-9">
				<div class="blog_list">
					<div class="col-md-2 blog_date">
						<span class="date">may <p>24<p></p></span>
						<span class="icon_date"><i class="fa fa-laptop"></i> </span>
					</div>
					<div class="col-md-10 blog_left">
						<a href="single-page.jsp"><img src="common/images/blog-pic1.jpg" alt="" class="img-responsive"/></a>
						<h4><a href="single-page.jsp">Lorem Ipsum is simply dummy text of the printing and typesetting industry </a></h4>
						<span>posted by <a href="#">Admin</a> in <a href="#">Wordpress</a> <a class="left" href="#"><i class="fa fa-comment"></i>Comments</a> <a class="left" href="#"><i class="fa fa-eye"></i>124 views</a></span>
						<p class="para">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>
						<div class="read_btn">
							<a href="single-page.jsp"><button class="btn">view more</button></a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="blog_list">
					<div class="col-md-2 blog_date">
						<span class="date">Jun <p>17<p></p></span>
						<span class="icon_date"><i class="fa fa-laptop"></i> </span>
					</div>
					<div class="col-md-10 blog_left">
						<a href="single-page.jsp"><img src="common/images/blog-pic2.jpg" alt="" class="img-responsive"/></a>
						<h4><a href="single-page.jsp">Lorem Ipsum is simply dummy text of the printing and typesetting industry </a></h4>
						<span>posted by <a href="#">Admin</a> in <a href="#">Wordpress</a> <a class="left" href="#"><i class="fa fa-comment"></i>Comments</a> <a class="left" href="#"><i class="fa fa-eye"></i>124 views</a></span>
						<p class="para">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>
						<div class="read_btn">
							<a href="single-page.jsp"><button class="btn">view more</button></a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 blog_right">
				<h4>Ads 125 x 125</h4>
				<ul class="ads_nav list-unstyled">
					<li><a href="#"><img src="images/ads_pic.jpg" alt=""> </a></li>
					<li><a href="#"><img src="images/ads_pic.jpg" alt=""> </a></li>
					<li><a href="#"><img src="images/ads_pic.jpg" alt=""> </a></li>
					<li><a href="#"><img src="images/ads_pic.jpg" alt=""> </a></li>
					<div class="clearfix"></div>
				</ul>
				<ul class="tag_nav list-unstyled">
					<h4>tags</h4>
						<li class="active"><a href="#">awesome</a></li>
						<li><a href="#">art</a></li>
						<li><a href="#">classic</a></li>
						<li><a href="#">photo</a></li>
						<li><a href="#">wordpress</a></li>
						<li><a href="#">videos</a></li>
						<li><a href="#">standard</a></li>
						<li><a href="#">gaming</a></li>
						<li><a href="#">photo</a></li>
						<li><a href="#">music</a></li>
						<li><a href="#">data</a></li>
						<div class="clearfix"></div>
				</ul>
				<div class="news_letter">
					<h4>news letter</h4>
						<form>
							<input type="text" placeholder="Your email address">
							<input type="submit" value="subscribe">
						</form>
				</div>
			</div>
			<div class="clearfix"></div>
	</div><!-- end blog -->
</div>
</div>
<jsp:include page="indexfooter.jsp" flush="true"></jsp:include>
</body>
</html>