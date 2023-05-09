<%--
  Created by IntelliJ IDEA.
  User: crknbkls
  Date: 2023/4/25
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        //用来定义方法
        public int a = 1;
        public int b = 2;
        public int print1(){
            return a+b;
        }
    %>
    <%
        out.print(print1());
        pageContext.setAttribute("user","");
        request.setAttribute("name","a");
        String name = (String) pageContext.getAttribute("name", PageContext.SESSION_SCOPE);
        out.print(name);
    %>
    ${empty user}
    ${empty user1}
    ${pageContext.response.contentType}
    <br/>
    ${pageContext.response.characterEncoding}
    <br/>
    ${pageContext.request.requestURI}
    <br/>
    ${pageContext.servletContext.serverInfo}
    <br/>
    ${pageContext.servletConfig.servletContext}
    <br/>
    ${requestScope.name}
    <br/>
    ${sessionScope.name}
</body>
</html>