<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %><%--
  Created by IntelliJ IDEA.
  User: sinochem
  Date: 2019/6/13
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自动刷新实例</title>
</head>
<body>
<h2>自定刷新实例</h2>
<%
//    设置每隔5秒自动刷新
    response.setIntHeader("Refresh",5);
    //获取当前时间
    Calendar calendar = new GregorianCalendar();
    String pm;
    int hour = calendar.get(Calendar.HOUR);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);
    if (calendar.get(Calendar.AM_PM) == 0){
        pm = "AM";
    }else {
        pm = "PM";
    }
    String CT = hour +":"+minute+":"+second+" "+pm;
    out.print("当前时间："+ CT+"\n");
%>
<li>
    <p>
        <b>名称：</b>
        <%= request.getParameter("name")
        %>
    </p>
</li>
<li>
    <p>
        <b>网址：</b>
        <%= request.getParameter("url")%>
    </p>
</li>

<h2>从复选框中读取数据</h2>
<ul>
    <li>
        <p>
            <b>
                是否选中
            </b>
            <%= request.getParameter("google")%>
        </p>
    </li>
</ul>
<ul>
    <li>
        <p>
            <b>
                菜鸟是否选中
            </b>
            <%= request.getParameter("runoob")%>
        </p>
    </li>
</ul>
<ul>
    <li>
        <p>
            <b>
                淘宝是否选中
            </b>
            <%= request.getParameter("taobao")%>
        </p>
    </li>
</ul>
</body>
</html>
