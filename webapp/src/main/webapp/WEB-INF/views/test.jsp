<%--
  Created by IntelliJ IDEA.
  User: hzqiuxm
  Date: 2015/4/3
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
  <jsp:include page="/base.jsp" flush="true"></jsp:include>
    <title>test页面</title>
  <script>

    $(function(){



      $.ajax({
        type : "POST",
        url : "resume/test1",
        success : function(result) {
          $('span').text(result.rows[1].resumeName);
        }
      });
    });
  </script>
</head>
<body>
<span>111111</span>
</br>
${data[1].id}
</br>
${retcode}
</br>
${msg}
</br>
<div id = "d1">

</div>
</body>
</html>
