<%--
  Created by IntelliJ IDEA.
  User: hzqiuxm
  Date: 2015/4/1
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
  .logoo{
    margin: 0;
    padding: 0;
    position: absolute;
    top: 15px;
  }
</style>
<%--<script type="text/javascript">--%>
  <%--$(function(){--%>
    <%--$("ul li").on("click",function(){--%>
      <%--$(this).addClass("activate").siblings().removeClass("activate");--%>
    <%--})--%>
  <%--})--%>
<%--</script>--%>
<div class="header_bg">
  <div class="container">
    <div class="header">
      <div class="logoo">
        <a href="index.jsp"><img src="common/images/logo3.png" alt=""/></a>
      </div>
      <div class="h_menu">
        <a id="touch-menu" class="mobile-menu" href="#">菜单</a>
        <nav>
          <ul class="menu list-unstyled">
            <li id = 'l1'><a href="index.jsp">首页</a></li>
            <li><a href="about.jsp">关于作者</a></li>
            <li><a href="service.jsp">相关下载</a></li>
            <li><a href="portfolio.jsp">个人相册</a>
              <ul class="sub-menu list-unstyled">
                <li><a href="portfolio.jsp">二级菜单1</a></li>
                <li><a href="portfolio.jsp">二级菜单2</a></li>
                <li><a href="portfolio.jsp">二级菜单3</a>
                  <ul class="list-unstyled">
                    <li><a href="portfolio.jsp">三级菜单1</a></li>
                    <li><a href="portfolio.jsp">三级菜单2</a></li>
                    <li><a href="portfolio.jsp">三级菜单3</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="blog.jsp">个人博文</a></li>
            <li><a href="feature.jsp">好文推荐</a></li>
            <li><a href="contact.jsp">联系作者</a></li>
          </ul>
        </nav>
        <script src="common/js/menu.js" type="text/javascript"></script>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>