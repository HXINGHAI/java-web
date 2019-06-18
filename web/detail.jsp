<%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/13
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
</head>
<body>
 <p>
     动作元素<%=(new java.util.Date().toLocaleString())%>
 </p>
<h2>GET方法获取参数</h2>
 <form action="refresh.jsp" method="get">
     名称：<input type="text" name="name">  <br>
     网址：<input type="text" name="url">   <br>
     <input type="submit" value="确认">
 </form>


<br>
 <form action="refresh.jsp" method="POST" target="_blank">
     <input type="checkbox" name="google" checked="checked" /> Google
     <input type="checkbox" name="runoob"  /> 菜鸟教程
     <input type="checkbox" name="taobao" checked="checked" />
     淘宝
     <input type="submit" value="选择网站" />
 </form>
</body>
</html>
