<%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/14
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //编码解决
    String str = java.net.URLEncoder.encode(request.getParameter("name"),"utf-8");
    Cookie cookie = new Cookie("name",str);
    Cookie url = new Cookie("url",request.getParameter("url"));
    //设置cookie过期时间
    cookie.setMaxAge(60);
    url.setMaxAge(60);
    //在响应头部添加cookie
    response.addCookie(cookie);
    response.addCookie(url);
  //  out.println(request.getCookies());
%>
<html>
<head>
    <
    <script !src=""></script>>
    <title>存储设置cookie</title>
</head>
<body>
<h1>设置 Cookie</h1>

<ul>
    <li><p><b>网站名:</b>
        <%= request.getParameter("name")%>
    </p></li>
    <li><p><b>网址:</b>
        <%= request.getParameter("url")%>
    </p></li>
</ul>
</body>
</html>
