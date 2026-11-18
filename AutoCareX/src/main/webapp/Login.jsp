
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AutoCare - Login</title>

    <link rel="stylesheet" href="CSS/Login.css">
    <link rel="stylesheet" href="CSS/navbar.css">
</head>

<body class="register-page">

    <%@ include file="navbar.jsp" %>

    <form action="log" method="post">

        <h2>Login Page</h2>

        <label>Enter email:</label>
        <input type="email" name="email" required />
        <br><br>

        <label>Enter password:</label>
        <input type="password" name="password" required />
        <br><br>

        <button type="submit">Login</button>

        <p>
            Don't have an account?
            <a href="Register.jsp">Register here</a>
        </p>

    </form>

</body>
</html>
