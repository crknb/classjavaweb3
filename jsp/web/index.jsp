<%--
  Created by IntelliJ IDEA.
  User: crknbkls
  Date: 2023/4/25
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<html>
  <head>
    <title>jsp显示系统时间</title>
  </head>
  <body>

  <%
    // 代码（变量，方法，表达式）等
    Date date = new Date();
    out.println(date);
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String today = dateFormat.format(date);
  %>
  <%
    out.print(pageContext.getPage());
    ServletRequest request1 = pageContext.getRequest();
//    获取的是同一个对象
    out.print(request);
    out.print(request1);
    pageContext.setAttribute("name","张三", PageContext.REQUEST_SCOPE);
    pageContext.setAttribute("name","李四", PageContext.SESSION_SCOPE);
  %>
  当前时间<%=today%>
  <%
    String name1 = (String) pageContext.getAttribute("name", PageContext.SESSION_SCOPE);
    out.print(name1);
    String name = (String) pageContext.getAttribute("name", PageContext.REQUEST_SCOPE);
    out.print(name);
  %>
  </body>
</html>
