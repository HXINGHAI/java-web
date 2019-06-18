<%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/17
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="content-type" charset="UTF-8" content="text/html">
    <title>注册</title>
</head>

<body>
<h2 style="color: crimson">用户注册</h2>
<form action="register" method="post">
    <table align="center">
        <tr>
            <td align="right">登录账号：</td>
            <td><input type="text" id="account" name="account" required="required"/></td>
        </tr>
        <tr>
            <td align="right">真实姓名：</td>
            <td><input type="text" id="username" name="username" required="required" /></td>
        </tr>
        <tr>
            <td align="right">输入密码：</td>
            <td><input type="password" id="password" name="password" required="required" /></td>
        </tr>
        <tr>
            <td align="right">确认密码：</td>
            <td><input type="password" id="password2" name="password2" required="required" /></td>
        </tr>

        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr>
            <td align="center"><input type="submit" value="注册"></td>
            <td align="center"><input type="reset" value="重置"></td>
            &nbsp;
            &nbsp;
            <%
            Object msg = request.getAttribute("msg");
            if (msg != null){
                %>
                <a href="login.jsp">跳转登录界面</a>
              <%
                out.println("提示信息："+msg);
            }
        %>

        </tr>
    </table>
</form>

</body>
</html>
