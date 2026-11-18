<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile - AutoCare</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #dbeafe;
    padding: 0;
}

.container {
    max-width: 1000px;
    margin: auto;
    padding: 30px;
}

h1 {
    text-align: center;
    margin-bottom: 25px;
    color: #1e3a8a;
}

.profile-box, .table-box {
    background: white;
    padding: 25px;
    border-radius: 10px;
    margin-bottom: 25px;
}

.profile-box p {
    margin: 12px 0;
}

h2 {
    margin-bottom: 15px;
    color: #1e3a8a;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 13px;
    border: 1px solid #ddd;
    text-align: center;
}

th {
    background: #1e40af;
    color: white;
}

tr:nth-child(even) {
    background: #f1f5f9;
}

.no-booking {
    padding: 20px;
    color: #666;
}
</style>
<link rel="stylesheet" href="CSS/Navbar.css">
</head>

<body>
  <%@ include file="navbar.jsp" %>
<div class="container">
   
    <h1>My Profile</h1>

    <div class="profile-box">

        <h2>Customer Details</h2>
        <p><b>Name:</b> ${name}</p>
        <p><b>Mobile Number:</b> ${mobile}</p>
        <p><b>Email:</b> ${email}</p>
    </div>

    <div class="table-box">
        <h2>My Booked Services</h2>
        <table>
            <tr>
                <th>Service</th>
                <th>Vehicle Model</th>
                <th>Booking Date</th>
                <th>Address</th>
            </tr>

            <%
            ResultSet rs = (ResultSet) request.getAttribute("bookings");
            if (rs != null) {
                while (rs.next()) {
            %>

            <tr>
                <td><%= rs.getString("service_name") %></td>
                <td><%= rs.getString("vehicle_model") %></td>
                <td><%= rs.getDate("booking_date") %></td>
                <td><%= rs.getString("address") %></td>
            </tr>
            <%
                }

            } else {
            %>
            <tr>
                <td colspan="4" class="no-booking">
                    No Booked Services Found.
                </td>
            </tr>
            <%
            }
            %>
        </table>
    </div>
</div>
</body>
</html>