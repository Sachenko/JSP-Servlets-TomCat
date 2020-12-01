<%@ page import="java.util.List" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Users</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

    <body>

        <div>
            <div>
                <div>
                    <h2>Users</h2>
                </div>
                <%
                    List<String> names = (List<String>) request.getAttribute("userNames");

                    if (names != null && !names.isEmpty()) {
                        out.println("<ui>");
                        for (String s : names) {
                            out.println("<li>" + s + "</li>");
                        }
                        out.println("</ui>");
                    } else out.println("<p>There are no users yet!</p>");
                %>


            </div>
        </div>

        <div>
            <button class="w3-btn w3-hover-blue w3-round-large" onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>