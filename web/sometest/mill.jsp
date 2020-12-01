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
    <title>Million</title>
</head>
<body>
<div>
    <h1> Send million </h1>
</div>
    <p>
    </p>
    <p>
        <%
            for (int i = 0; i < 1000; i++) {
                out.println("<p>" + "Я нажал кнопку  " + i + "</p>");

            }
        %>
    </p>

</body>
</html>
<%--
String redirectURL = "http://localhost:8080/sometest/mill.jsp";
response.sendRedirect(redirectURL);--%>
