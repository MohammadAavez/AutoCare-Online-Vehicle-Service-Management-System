<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>
<link rel="stylesheet" href="CSS/Navbar.css">
</head>
<body>

<%
    String email = (String) session.getAttribute("email");
%>

<nav>
    <h2>AutoCare</h2>

    <div class="nav-links">
        <a href="Home.jsp">Home</a>
        <a href="Services.jsp">Services</a>

        <a href="Home.jsp#about">About Us</a>
        <a href="Home.jsp#contact">Contact</a>

        <% if(email == null) { %>

            <a href="Login.jsp">Login</a>
            <a href="Register.jsp" class="register-btn">Register</a>

        <% } else { %>
            <a href="Logout">Logout</a>
            <a href="profile">My Profile</a>

        <% } %>

    </div>
</nav>
</body>
</html>