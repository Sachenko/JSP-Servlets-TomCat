<%@ page import="app.testing.TestClass" %><%--
  Created by IntelliJ IDEA.
  User: sachenko
  Date: 23.11.2020
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Hello</title>
</head>
<body>
<div>
    <h1> Just testing JSP </h1>
</div>
    <p>
        <% java.util.Date now = new java.util.Date();
        String dateNow = "Дата сейчас: " + now;
        %>

        <%= dateNow %>
    </p>
    <p>
        <%
            for (int i = 0; i < 10; i++) {
                out.println("<p>" + "Test String " + i + "</p>");
            }
        %>
    </p>

    <%
        TestClass testClass = new TestClass();
    %>
    <%=
        testClass.getInfo()
    %>
</body>
</html>
