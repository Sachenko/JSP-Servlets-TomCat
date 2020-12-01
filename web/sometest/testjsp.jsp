<%--
  Created by IntelliJ IDEA.
  User: sachenko
  Date: 25.11.2020
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>User form</title>
</head>
<body>
    <form action="sometest/postuser.jsp" method="post">
        Name: <input name ="username"/>
        <br><br>
        Gender: <input type="radio" name="gender"
        value="female" checked /> Female
        <input type="radio" name="gender" value="male" /> Male
        <br><br>
        Country: <select name="country">
        <option>Moscow</option>
        <option>EKB</option>
        <option>SPB</option>

        </select>
        <br><br>
        Courses:
        <input type="checkbox" name="courses" value="JavaSE" checked />Java SE
        <input type="checkbox" name="courses" value="JavaFX" checked />Java FX
        <input type="checkbox" name="courses" value="JavaEE" checked />Java EE
        <br><br>
        <input type="submit" value="Submit" />
    </form>
    <br><br>
    <div>
        <button onclick="location.href='/'">Back to main</button>
    </div>
</body>
</html>
