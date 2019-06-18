<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/13
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>httpheader</title>
    <meta charset = "utf-8"/>
</head>
<body>
 <h2 align="center">头部请求实例</h2>
<table width="100%" border="1" align="center">
    <tr bgcolor="#dc143c">
        <th>headeer Name</th><th>Header Values</th>
    </tr>
    <%
        Enumeration headerName = request.getHeaderNames();
        while (headerName.hasMoreElements()){
            String params = (String)headerName.nextElement();
            out.print("<tr><td>" + params + "<td>\n");
            String paramsValues = request.getHeader(params);
            out.print("<td>" + paramsValues + "<td><tr>\n");
        }
    %>
</table>
</body>
</html>
