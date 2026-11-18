
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Form</title>
<link rel="stylesheet" href="CSS/Booking.css">
<link rel="stylesheet" href="CSS/Navbar.css">
</head>
<body class="booking-page">

      <%@ include file="navbar.jsp" %> 

    <form action="confirmBooking" method="post">
        <h1>Book Your Service</h1>
        <label>Customer Name:</label><br>
        <input type="text" name="name" value="${name}" readonly>
        <br><br>

        <label>Mobile Number:</label><br>
        <input type="text" name="mobile" value="${mobile}" readonly>
        <br><br>

        <label>Service Name:</label><br>
        <input type="text" name="service" value="${service}" readonly>
        <br><br>

        <label>Vehicle Model:</label><br>
        <input type="text" name="vehicle_model" placeholder="Enter vehicle model" required>
        <br><br>

        <label>Booking Date:</label><br>
        <input type="date" name="booking_date" required>
        <br><br>

        <label>Address:</label><br>
        <textarea name="address" placeholder="Enter your address" required></textarea>
        <br><br>

        <button type="submit">Confirm Booking</button>

    </form>

</body>
</html>
