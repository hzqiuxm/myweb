<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>生活点滴</title>
<!-- Bootstrap -->
<link href="common/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="common/css/bootstrap.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="common/css/blue.css" rel="stylesheet" type="text/css" media="all" />
<!----font-Awesome----->
   	<link rel="stylesheet" href="common/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!-- start plugins -->
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script src="common/js/menu.js" type="text/javascript"></script>
		<script type="text/javascript" src="common/js/fliplightbox.min.js"></script>
		<script type="text/javascript">
			$('body').flipLightBox()
		</script>
		<script type="text/javascript" src="common/js/jquery.easing.min.js"></script>
		<script type="text/javascript" src="common/js/jquery.mixitup.min.js"></script>
		<script type="text/javascript">
			$(function() {

				var filterList = {

					init : function() {

						// MixItUp plugin
						// http://mixitup.io
						$('#portfoliolist').mixitup({
							targetSelector : '.portfolio',
							filterSelector : '.filter',
							effects : ['fade'],
							easing : 'snap',
							// call the hover effect
							onMixEnd : filterList.hoverEffect()
						});

					},

					hoverEffect : function() {

						// Simple parallax effect
						$('#portfoliolist .portfolio').hover(function() {
							$(this).find('.label').stop().animate({
								bottom : 0
							}, 200, 'easeOutQuad');
							$(this).find('img').stop().animate({
								top : -30
							}, 500, 'easeOutQuad');
						}, function() {
							$(this).find('.label').stop().animate({
								bottom : -40
							}, 200, 'easeInQuad');
							$(this).find('img').stop().animate({
								top : 0
							}, 300, 'easeOutQuad');
						});

					}
				};

				// Run the show!
				filterList.init();

			});
		</script>
<!-- start light_box -->
<link rel="stylesheet" type="text/css" href="common/css/jquery.fancybox.css" media="screen" />
<!--
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
-->
<script type="text/javascript" src="common/js/jquery.fancybox-1.2.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("div.fancyDemo a").fancybox();
		});
	</script>

</head>
<body>
<jsp:include flush="true" page="indexheader.jsp"></jsp:include>
<div class="main_btm1"><!-- start main_btm -->
<div class="container">
	<div class="portfolio_main">
						<ul id="filters" class="clearfix">
							<li>
								<span class="filter active" data-filter="app card icon web">All</span>
							</li>
							<li>
								<span class="filter" data-filter="app  icon">App</span>
							</li>
							<li>
								<span class="filter" data-filter="card ">Card</span>
							</li>
							<li>
								<span class="filter" data-filter="icon app card ">Icon</span>
							</li>
							<li>
								<span class="filter" data-filter="web card icon">Web</span>
							</li>
						</ul>
						<div id="portfoliolist">
							<div class="portfolio logo1" data-cat="logo">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s1.jpg"><img src="common/images/s1.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Logo</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio app" data-cat="app">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s2.jpg"><img src="common/images/s2.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">APP</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio web" data-cat="web">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s3.jpg"><img src="common/images/s3.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Web design</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio card" data-cat="card">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s4.jpg"><img src="common/images/s4.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Business card</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio app" data-cat="app">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s5.jpg"><img src="common/images/s5.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">APP</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio card" data-cat="card">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s6.jpg"><img src="common/images/s6.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Business card</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio card" data-cat="card">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s7.jpg"><img src="common/images/s7.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Business card</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio logo1" data-cat="web">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s8.jpg"><img src="common/images/s8.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Logo</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio app" data-cat="app">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s2.jpg"><img src="common/images/s2.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">APP</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio card" data-cat="card">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s5.jpg"><img src="common/images/s5.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Business card</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio logo1" data-cat="icon">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s1.jpg"><img src="common/images/s1.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">Logo</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
							<div class="portfolio logo1" data-cat="web">
								<div class="portfolio-wrapper">
									<div class="fancyDemo">
										<a rel="group" title="" href="common/images/s5.jpg"><img src="common/images/s5.jpg" alt=""class="img-responsive"/></a>
									</div>
									<div class="label">
										<div class="label-text">
											<span class="text-category">App</span>
										</div>
										<div class="label-bg"></div>
									</div>
								</div>
							</div>
						</div>
			<div class="clearfix"></div>
			<ul class="pagination">
			  <li><a href="#">Prev</a></li>
			  <li><a href="#">1</a></li>
			  <li><a href="#">2</a></li>
			  <li><a href="#">3</a></li>
			  <li class="cau_hide"><a href="#">4</a></li>
			  <li class="cau_hide"><a href="#">5</a></li>
			  <li class="cau_hide"><a href="#">6</a></li>
			  <li class="cau_hide"><a href="#">7</a></li>
			  <li><a href="#">Next</a></li>
			</ul>
		</div>
	</div>
</div>
<jsp:include page="indexfooter.jsp" flush="true"></jsp:include>
</body>
</html>