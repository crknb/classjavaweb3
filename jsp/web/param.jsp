<%--
  Created by IntelliJ IDEA.
  User: crknbkls
  Date: 2023/4/26
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body style="text-align: center">
    ${pageContext.request.contextPath}
    <form action="${pageContext.request.contextPath}/param.jsp">
        num1: <label>
        <input type="text" name="num1">
    </label><br/>
        num2: <label>
        <input type="text" name="num2">
    </label><br/>
        num3: <label>
        <input type="text" name="num3">
    </label><br/>
        <input type="submit" value="提交">
    </form>
    ${param.num1}
    <br/>
    ${param.num2}
    <br/>
    ${param.num3}
    <br/>
    ${initParam.time}
</body>
</html>
