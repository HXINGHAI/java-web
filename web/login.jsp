<%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/17
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>登陆</title>
</head>
<meta http-equiv="content-type" content="text/html" charset="UTF-8">
<body>
<form action="login" method="post">
    <table>
        <tr>
            <td align="center" bgcolor="green">用户名</td>
            <td><input type="text" id="account" name="account"></td>
        </tr>
        <tr>
            <td align="center" bgcolor="green">密码</td>
            <td><input type="password" id="password" name="password"></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#dc143c"><input type="submit" value="登陆"></td>
            <td align="center"><a href="register.jsp"><input type="button" value="注册"></a> </td>
        </tr>
    </table>
</form>
<%
    Object error = request.getAttribute("error");
    if (error != null){
%>
<span style="display:none;"><%=error %></span>
<%
    }
%>
</body>
</html>
