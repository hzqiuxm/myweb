<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/5/8
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="application/javascript" src="/plugins/jquery/jquery-1.11.1.min.js"></script>
<html>
<head>
    <title></title>
</head>
<body>
  <!-- 加载编辑器的容器 -->
  <script id="container" name="content" type="text/plain">
          这里写你的初始化内容, 好把你什么都没做
      </script>
  <!-- 配置文件 -->
  <script type="text/javascript" src="/plugins/ueditor/ueditor.config.js"></script>
  <!-- 编辑器源码文件 -->
  <script type="text/javascript" src="/plugins/ueditor/ueditor.all.js"></script>
  <!-- 实例化编辑器 -->
  <script type="text/javascript">
    var ue = UE.getEditor('container');
    $(function(){
      $('#b1').on('click',function(){
//          ue.setContent('hello');
          var html = ue.getContent();
          alert(html);
          $('#p1').html(html).trim();
      })
    })
  </script>

<input id = "b1" type="button" value="查看编辑器内容">
<p id = "p1"></p>
  </body>
</html>
