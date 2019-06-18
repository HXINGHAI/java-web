<%@ page import="com.hxh.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/17
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User userInfo = (User) session.getAttribute("user");
%>
<html>
<head>
    <
    <meta http-equiv="content-type" charset="UTF-8" content="text/html">
    <title>我的详细资料</title>
</head>
<body>

    <span>我的信息</span>
    <table bgcolor="#d8bfd8" border="1" align="center">
        <tr>
            <td bgcolor="#dc143c" align="center">账号</td>
            <td bgcolor="#dc143c">密码</td>
            <td bgcolor="#dc143c">姓名</td>
            <td bgcolor="#dc143c">性别</td>
            <td bgcolor="#dc143c">年龄</td>
            <td bgcolor="#dc143c">邮箱</td>
        </tr>
        <tr>
            <td><%=userInfo.getAccount()%></td>
            <td><%=userInfo.getPassword()%> </td>
            <td><%=userInfo.getUsername()%></td>
            <td><%=userInfo.getSex()%></td>
            <td><%=userInfo.getAge()%></td>
            <td><%=userInfo.getEmial()%></td>
        </tr>
    </table>
</body>
</html>
