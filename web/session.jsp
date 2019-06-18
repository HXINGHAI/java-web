<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/14
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //获取session创建的时间、
    Date date = new Date(session.getCreationTime());
    //获取最后i一次访问页面的时间
    Date lastAccess = new Date(session.getLastAccessedTime());
    String titile = "欢迎再次访问页面";
   int count = 0;
    String visitCount = new String("visitCount");
    String userIDKey = new String("userID");
    String userID = new String("ABCD");

    //检测网页是否有新的访问用户、

    if (session.isNew()){
        titile = "欢迎访问页面";
        session.setAttribute(userIDKey,userID);
        session.setAttribute(visitCount,count);
    }else{
        count = (int) session.getAttribute(visitCount);
        count +=1;
        userID = (String)session.getAttribute(userIDKey);
        session.setAttribute(visitCount,count);
    }
%>
<html>
<head>
    <title>查看session的值</title>
</head>
<body>
 <h2>session跟踪</h2>
<table border="1" align="center">
    <tr bgcolor="#dc143c">
        <th>Session信息</th>
        <th>value值</th>
    </tr>
    <tr>
        <td>id</td>
        <td><% out.print(session.getId());%></td>
    </tr>
    <tr>
        <td>创建时间</td>
        <td><% out.print(date);%></td>
    </tr>
    <tr>
        <td>最后访问时间</td>
        <td><% out.print(lastAccess);%></td>
    </tr>
    <tr>
        <td>用户ID</td>
        <td><% out.print(userID);%></td>
    </tr>
    <tr>
        <td>访问次数</td>
        <td><% out.print(count);%></td>
    </tr>
</table>
</body>
</html>
