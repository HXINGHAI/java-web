<%@ page import="com.hxh.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/17
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User userInfo = (User) session.getAttribute("user");
    if (userInfo == null){
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>
<html>
<head>
    <title>用户详情页</title>
</head>
<meta http-equiv="content-type" charset="UTF-8" content="text/html">
<body>
<%
    if (userInfo != null){
%>
welcome master! <%=userInfo.getUsername()%>!
<a href="<%=request.getContextPath()%> /logout">离开</a>

<div style="width: 400px; margin: 20px 20px;">
    <a href="myInfo.jsp" ><button style="background: lightblue;">我的资料</button></a>
    &nbsp;
    &nbsp;
    <br>
    <br>
    <a href="<%=request.getContextPath()%>/user?showAllUser">查看用户资料</a>
</div>

<%
    }
%>
</body>
</html>
