<%--
  Created by IntelliJ IDEA.
  User: sachenko
  Date: 23.11.2020
  Time: 22:31
  To change this template use File | Settings | File Templates.

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Try send parameters with use URL and "?" </title>
</head>
<body>
<h1>Something JSP stuff</h1>
    <p>Name: <%= request.getParameter("name") %></p>
    <p>Age: <%= request.getParameter("age")%></p>
</body>
</html>
