<%--
  Created by IntelliJ IDEA.
  User: sachenko
  Date: 25.11.2020
  Time: 14:27
  To change this template use File | Settings | File Templates.

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <meta CHARSET="UTF-8">
        <title>User Info</title>

        </head>
        <body>
        <p>Name: <%= request.getParameter("username")%> </p>
        <p>Country: <%= request.getParameter("country")%></p>
        <p>Gender: <%= request.getParameter("gender")%></p>
        <h4>Selected courses</h4>
        <ul>
            <%
                String[] courses = request.getParameterValues("courses");
                for(String course: courses) {
                    out.println("<li>" + course + "</li>");
                }

            %>
        </ul>
        <br><br>
        <div>
            <button onclick="location.href='/'">Back to main</button>
        </div>
</body>
</html>
