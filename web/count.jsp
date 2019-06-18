<%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/14
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>点击次数的统计量</title>
</head>
<body>
<%
    Integer count =  (Integer)application.getAttribute("s");
    if (count == null || count == 0){
        out.println("欢迎访问本页面");
        count = 1;
    }else{
        out.println("欢迎再次访问本页面");
        count ++;
    }
    application.setAttribute("s",count);

%>
<p>页面访问量为：<% out.print(count);%></p>
</body>
</html>
