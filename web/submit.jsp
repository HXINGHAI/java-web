<%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/14
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>cookie提交</title>
</head>
<body>
<form action="cookiemain.jsp" method=GET>
    站点名: <input type="text" name="name">
    <br />
    网址: <input type="text" name="url" />
    <input type="submit" value="提交" />
</form>
<sql >

</sql>
</body>
</html>
