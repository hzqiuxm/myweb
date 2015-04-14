<%--
  Created by IntelliJ IDEA.
  User: hzqiuxm
  Date: 2015/4/8
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<jsp:include page="/base.jsp" flush="true"></jsp:include>
<title>个人介绍首页</title>

</head>

<body>
<table data-toggle="table"
       data-url="resume/getallself"
       data-pagination="true"
       data-side-pagination="server"
       data-search="true"
       data-height="300"
        id = "myselftable">
  <thead>
  <tr>
    <th data-field="id">ID</th>
    <th data-field="resumeName">标签名1</th>
    <th data-field="resumeFileName" data-events="actionEvents">文件名称</th>

  </tr>
  </thead>
</table>
</body>
<script>

  $(function(){

    $('#myselftable').on('dbl-click-row.bs.table',function(e,row,$element){

      alert(row.id);
    });

  });

  $('#myselftable').bootstrapTable({
    onClickRow :function (row, $element){
      alert(row.resumeName);
    }
  });

  function queryParams() {
    return {
      type: 'owner',
      sort: 'updated',
      direction: 'desc',
      per_page: 100,
      page: 1
    };
  }
</script>
</html>
