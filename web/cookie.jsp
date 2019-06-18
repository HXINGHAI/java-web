<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/14
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读取cookie</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
</head>
<body>
<%
    Cookie cookie = null;
    Cookie[] cookies = null;
    cookies = request.getCookies();
    if (cookies != null){
        out.println("<h2>查找cookie的名字与值</h2>");
        for (int i =0 ;i<cookies.length;i++){
            cookie = cookies[i];
            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") +" <br>");
            out.print("------------------------------------<br>");
        }
    }else{
        out.println("<h2>没有发现cookie</h2>");
    }
%>
</body>
</html>
