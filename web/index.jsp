<%@ page import="static sun.java2d.cmm.ColorTransform.Out" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/13
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>My First EE</title>
  </head>
  <body>
  $END$
  <%=(request.getRemoteAddr())  %>
  <p>
    今天的日期是：<%=(new java.util.Date()).getTime()%>
  </p>
  <h3>for循环</h3>
  <%
    for (int size = 0;size < 6;size++){ %>
  <font color = "green" size="<%= size%>">
    初始化阶段<<br>
  </font>
  <%}%>
  <%--<% out.print(request.getHeader());%>--%>
  <%--<h2>调用动作实例 </h2>--%>
  <%--<jsp:include page="detail.jsp" flush="true"/>--%>


  </body>
</html>
