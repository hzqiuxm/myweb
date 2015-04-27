<%--
  Created by IntelliJ IDEA.
  User: hzqiuxm
  Date: 2015/3/31
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="zh-CN" dir="ltr">

<!-- START HEAD -->
<head>
  <base href="${ctx}">
  <!-- this line will appear only if the website is visited with an iPad -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes"/>
  <meta charset="UTF-8"/>
  <title>QD小筑</title>
  <%--<link rel="stylesheet" href="/common/css/bootstrap.min.css">--%>

  <jsp:include flush="true" page="/base.jsp"/>
  <style>
    * {margin:0; padding:0;}
    body { background-color: #eee; padding-top: 50px;}
    h2 { text-align: center;}
    .container { position: relative; width:1000px; height:700px; margin:0px auto; }
    img { position: absolute; top:50px; left:100px; cursor: pointer;
      padding:10px 10px 25px; background-color: #fff; border:1px solid #ddd;
      transition:0.5s; box-shadow: 3px 3px 3px #ccc;
    }
    .img1 { left:40px; top:20px; transform:rotate(30deg); z-index: 1;}
    .img2 { left:156px; top:156px; transform:rotate(-30deg); z-index: 1;}
    .img3 { left:381px; top:60px; transform:rotate(30deg); z-index: 1;}
    .img4 { left:458px; top:256px; transform:rotate(30deg); z-index: 1;}
    .img5 { left:684px; top:110px; transform:rotate(-40deg); z-index: 1;}
    img:hover { transform:rotate(0deg); transform:scale(2); box-shadow: 6px 6px 6px #656565; z-index: 2;}
  </style>
</head>
<!-- END HEAD -->

<!-- START BODY -->
<body>
<%--<h1>${ctx}</h1>--%>
<h1 class="text-center">${name}</h1>
${result.name}

<div class="container">
  <img class="img1" src="common/images/1.jpg" height="150" width="150" alt="">
  <img class="img2" src="common/images/2.jpg" height="160" width="200" alt="">
  <img class="img3" src="common/images/3.jpg" height="170" width="200" alt="">
  <img class="img4" src="common/images/4.jpg" height="240" width="200" alt="">
  <img class="img5" src="common/images/5.jpg" height="300" width="300" alt="">
</div>
<span>span</span>
<script type="text/javascript">

  $().ready(function(){
    $.ajax({
      type : "POST",
      url : "resume/test1",
      success : function(result) {
        console.log("=======");
        console.log("result:"+result);
        $('span').text(result.rows[0].resumeName);
      }
    });
  });

</script>


</body>
</html>
