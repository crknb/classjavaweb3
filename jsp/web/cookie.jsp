<%--
  Created by IntelliJ IDEA.
  User: crknbkls
  Date: 2023/4/26
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie</title>
</head>
<body>
    <%
        response.addCookie(new Cookie("name","张三"));
    %>
    ${cookie.name}
    <br/>
    ${cookie.name.name}=${cookie.name.value}
</body>
</html>
