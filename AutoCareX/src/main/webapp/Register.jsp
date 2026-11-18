<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="CSS/Register.css">
<link rel="stylesheet" href="CSS/Navbar.css">
</head>
<body class="register-page">

 <%@ include file="navbar.jsp" %>

<form action="reg" method="post">
<h2>Registration Page</h2>

<label>Full Name:</label>
<input type="text" name="name" placeholder="enter name"  required /><br><br>
<label>Mobile No:</label>
<input type="number" name="number" placeholder="enter mobile no"  required /><br><br>
<label>Email:</label>
<input type="email" name="email" placeholder="enter email" required /><br/><br/>
<label>Password:</label>
<input type="password" name="password" placeholder="enter password" required/><br><br>
<label>Confirm Password:</label>
<input type="password" name="confirmPassword" placeholder="enter confirm password" required /><br><br>
<button type="submit">register</button><br>

<p>already have an account? <a href="Login.html">login here</a></p>

</form> 

</body>
</html>