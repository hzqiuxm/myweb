<%--
  Created by IntelliJ IDEA.
  User: hzqiuxm
  Date: 2015/5/3
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="">
<head>
    <title>培训登记页面</title>
  <jsp:include flush="true" page="/base.jsp"/>
<script SRC="/common/myjs/peixun.js" type="application/javascript" ></script>
  <script SRC="/common/myjs/index.js" type="application/javascript" ></script>

</head>
<body>
<%--Your name:--%>
<%--<input type="text" ng-model="yourname" placeholder="World">--%>
<%--<hr>--%>
<%--Hello {{yourname || 'World'}}!--%>
<%--{{name1}}--%>
<%--<ul ng-controller="worldContrl">--%>
  <%--<li ng-repeat="country in countries">--%>
    <%--{{country.name}} has population of {{country.population}}--%>
  <%--</li>--%>
  <%--<hr>--%>
  <%--World's population : {{ population }} millions--%>
<%--</ul>--%>
<div ng-app="">

  <div ng-controller="cartController" class="container">
    <table class="table">
      <thead>
      <tr>
        <th>产品编号</th>
        <th>产品名称</th>
        <th>购买数量</th>
        <th>产品单价</th>
        <th>产品总价</th>
        <th>操作</th>
      </tr>
      </thead>
      <tbody>
      <tr ng-repeat="item in cart">
        <td>{{item.id}}</td>
        <td>{{item.name}}</td>
        <td>
          <button type="button" ng-click="reduce(item.id)" class="btn btn-info">-</button>
          <input type="text" name="" ng-model="item.quantity" value="{{item.quantity}}"/>
          <button type="button" ng-click="add(item.id)" class="btn btn-info">+</button>
        </td>
        <td>{{item.price}}</td>
        <td>{{item.price * item.quantity}}</td>
        <td><button type="button" ng-click="remove(item.id)" class="btn btn-danger">删除</button></td>
      </tr>

      <tr>
        <td>总购买价：{{totalprice()}} </td>
        <td></td>
        <td>总购买数量：{{totalcount()}}</td>
        <td></td>
        <td><button type="button" ng-click="removeall()" class="btn btn-primary">清空购物车</button></td>
        <td></td>

      </tr>
      </tbody>
    </table>

  </div>
</div>


</body>
</html>
