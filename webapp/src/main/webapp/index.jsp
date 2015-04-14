<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>QD小筑首页</title>
    <!-- Bootstrap -->
    <%--<link href="plugins/bootstrap/css/bootstrap.min.css" rel='stylesheet' type='text/css' />--%>
    <link href="/common/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/common/css/blue.css" rel="stylesheet" type="text/css" media="all" />
    <!----font-Awesome----->
    <link rel="stylesheet" href="/common/fonts/css/font-awesome.min.css">
    <!----font-Awesome----->
    <!-- start plugins -->
    <script type="text/javascript" src="common/js/jquery.min.js"></script>
    <script type="text/javascript" src="common/js/bootstrap.js"></script>
    <script type="text/javascript" src="common/js/bootstrap.min.js"></script>
    <!--start slider -->
    <link rel="stylesheet" href="common/css/fwslider.css" media="all">
    <script src="common/js/jquery-ui.min.js"></script>
    <script src="common/js/css3-mediaqueries.js"></script>
    <script src="common/js/fwslider.js"></script>
    <!--end slider -->
    <!-- must have -->
    <link href="common/css/allinone_carousel.css" rel="stylesheet" type="text/css">
    <script src="common/js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
    <script src="common/js/jquery.ui.touch-punch.min.js" type="text/javascript"></script>
    <script src="common/js/allinone_carousel.js" type="text/javascript"></script>
    <!-- must have -->
    <script>
        jQuery(function() {

            jQuery('#allinone_carousel_charming').allinone_carousel({
                skin: 'charming',
                width: 990,
                height: 454,
                responsive:true,
                autoPlay: 3,
                resizeImages:true,
                autoHideBottomNav:false,
                showElementTitle:false,
                verticalAdjustment:50,
                showPreviewThumbs:false,
                //easing:'easeOutBounce',
                numberOfVisibleItems:5,
                nextPrevMarginTop:23,
                playMovieMarginTop:0,
                bottomNavMarginBottom:-10
            });
        });
    </script>
    <!-- Owl Carousel Assets -->
    <link href="common/css/owl.carousel.css" rel="stylesheet">
    <script src="common/js/owl.carousel.js"></script>
    <!-- //Owl Carousel Assets -->
    <!-- start circle -->
    <script src="common/js/indexcommon.js"></script>
</head>
<body>
<jsp:include flush="true" page="indexheader.jsp"></jsp:include>

<div id="fwslider">
    <!-- start slider -->
    <div class="slider_container">
        <div class="slide">
            <!-- Slide image -->
            <img src="common/images/slider1.jpg">
            <!-- /Slide image -->
            <!-- Texts container -->
            <div class="slide_content">
                <div class="slide_content_wrap">
                    <!-- Text title -->
                    <h4 class="title">这个时代需要向死而生</h4>
                    <!-- /Text title -->
                    <!-- Text description -->
                    <p class="description">如果不能改变曲折长路，但是可以改变沿途风景</p>
                    <!-- /Text description -->
                </div>
            </div>
            <!-- /Texts container -->
        </div>
        <!-- /Duplicate to create more slides -->
        <div class="slide">
            <img src="common/images/slider2.jpg">
            <div class="slide_content">
                <div class="slide_content_wrap">
                    <h4 class="title">愿你具有匠心精神</h4>
                    <p class="description">极致专心做好现在的，美好的事情自然就会浮现在眼前</p>
                </div>
            </div>
        </div>
        <!--/slide -->
    </div>
    <div class="timers"></div>
    <div class="slidePrev"><span></span></div>
    <div class="slideNext"><span></span></div>
</div><!--/slider -->
<div class="main_bg"><!-- start main -->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="乱码是什么鬼">什么鬼</a></div>
    <div class="container">
        <div class="main_grid">
            <div class="top_grid"><!-- start top_grid -->
                <div class="col-md-10 span1_of_1">
                    <h3>秋深小和梦芳泽,晓来童欢却入耳.冥苦重返不得现,提携丹青画离歌.</h3>
                    </br>
                    <p>为自己所写的签名藏头诗，灵感来自于临近研究生毕业，在小和山居住的那些日子。某天清晨做梦梦到了一位故人，正沉浸在香甜美梦之中时，突被窗外小区内小孩的嬉戏声所吵醒，本想蒙头继续入梦，然不遂人愿，只好起来将满腹牢骚印在了纸上...</p>
                </div>
                <div class="col-md-2 span1_of_2">
                    <a class="btn" href="single-page.jsp">更多...</a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="span_of_4"><!-- start span_of_4 -->
                <div class="col-md-3 span1_of_4">
                    <div class="span4_of_list">
                        <span class="active"><i class="fa fa-thumbs-o-up"></i></span>
                        <h3>suspendisse</h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                        <div class="read_more">
                            <a class="btn btn-2 active" href="single-page.jsp">view more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 span1_of_4">
                    <div class="span4_of_list">
                        <span><i class="fa fa-lock"></i></span>
                        <h3>maecenas</h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                        <div class="read_more">
                            <a class="btn  btn-2b" href="single-page.jsp">view more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 span1_of_4">
                    <div class="span4_of_list">
                        <span><i class="fa fa-flag"></i></span>
                        <h3>aliquam</h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                        <div class="read_more">
                            <a class="btn btn-2b" href="single-page.jsp">view more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 span1_of_4">
                    <div class="span4_of_list">
                        <span><i class="fa fa-flask"></i></span>
                        <h3>habitasse</h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                        <div class="read_more">
                            <a class="btn btn-2b" href="single-page.jsp">view more</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div><!-- end span_of_4 -->
        </div>
    </div>
</div>
<div class="main1_bg"><!-- start main1 -->
    <div class="container">
        <div class="main slider_text texxt-center">
            <h4>why modus versus</h4>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
        </div>
    </div>
    <!-- start banner -->
    <div id="bannerBg">
        <div id="containingDiv">
            <div id="allinone_carousel_charming">
                <div class="myloader"></div>
                <!-- CONTENT -->
                <ul class="allinone_carousel_list">
                    <li><img src="common/images/slider_pic1.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic2.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic3.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic4.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic5.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic3.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic4.jpg" alt="" class="img-responsive"/></li>
                    <li><img src="common/images/slider_pic5.jpg" alt="" class="img-responsive"/></li>

                </ul>
            </div>
        </div>
    </div>
    <!-- end banner -->
</div>
<div class="main_btm"><!-- start main_btm -->
    <div class="container">
        <div class="main span_of_3">
            <div class="col-md-3 span1_of_3">
                <h4>why choose us?</h4>
                <ul class="list-unstyled nav_list">
                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur</a></li>
                    <li><a href="#">Nullam nec sapien eget metus</a></li>
                    <li><a href="#">Curabitur pellentesque mauris tempor </a></li>
                    <li><a href="#">Mauris dictum neque ornare nibh feugiat</a></li>
                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur</a></li>
                    <li><a href="#">Nullam nec sapien eget metus</a></li>
                    <li><a href="#">Curabitur pellentesque mauris tempor </a></li>
                    <li><a href="#">Curabitur pellentesque mauris tempor </a></li>
                    <li><a href="#">Mauris dictum neque ornare nibh feugiat</a></li>
                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur</a></li>
                </ul>
            </div>
            <div class="col-md-6 span1_of_3">
                <h5>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,<span>randomised words which don't </span> look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. </h5>
                <!-- start circle -->
                <ul class="list-unstyled circle_list">
                    <li>
                        <div class="safari chart">
                            <div class="tag">50%</div>
                        </div>
                        <h4 class="style">meier</h4>
                    </li>
                    <li>
                        <div class="moz chart">
                            <div class="tag">75%</div>
                        </div>
                        <h4 class="style">johnson</h4>
                    </li>
                    <li>
                        <div class="google chart">
                            <div class="tag">90%</div>
                        </div>
                        <h4 class="style">junghanns</h4>
                    </li>
                </ul>
                <!-- end circle -->
            </div>
            <div class="col-md-3 span1_of_3">
                <h4>what client's say ?</h4>
                <div class="clients">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos </p>
                </div>

            </div>
            <div class="clearfix"></div>
        </div>
        <div class="cau_hide">
            <div class="cursual"><!--  start cursual  -->
                <h4>our happy clients<span class="line"></span></h4>
            </div>
            <div id="owl-demo" class="owl-carousel"><!----start-img-cursual---->
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c1.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c2.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c3.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c1.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c2.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c3.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c1.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c4.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c1.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c2.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c3.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c1.png" alt="Lazy Owl Image">
                    </div>
                </div>
                <div class="item">
                    <div class="cau_left">
                        <img class="lazyOwl" data-src="common/images/c2.png" alt="Lazy Owl Image">
                    </div>
                </div>
            </div><!----//End-img-cursual---->
        </div>
    </div>
</div>
<jsp:include page="indexfooter.jsp" flush="true"></jsp:include>

</body>
</html>