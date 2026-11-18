
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String email = (String) session.getAttribute("email");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AutoCare - Home</title>

    <link rel="stylesheet" href="CSS/Home.css">
    <link rel="stylesheet" href="CSS/Navbar.css">
</head>

<body class="home-page">

    <!-- Navbar -->
    <nav>
        <h2>AutoCare</h2>

        <div class="nav-links">
            <a href="Home.jsp">Home</a>
            <a href="Services.jsp">Services</a>
            <a href="#about">About Us</a>
            <a href="#contact">Contact</a>

            <% if(email == null) { %>
                <a href="Login.jsp">Login</a>
                <a href="Register.jsp" class="register-btn">Register</a>
            <% } else { %>
                <a href="Logout">Logout</a>
                <a href="profile">My Profile</a>
            <% } %>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Welcome to AutoCare</h1>

            <p>
                Your vehicle deserves the best care.
                We provide reliable, professional and affordable car services.
            </p>

            <% if(email == null) { %>
                <a href="Login.jsp" class="btn">Book Your Service</a>
            <% } else { %>
                <a href="Services.jsp" class="btn">Book Your Service</a>
            <% } %>
        </div>
    </section>

    <!-- Services -->
    <section class="services">
        <h2>Our Services</h2>
        <p class="subtitle">We provide the best care for your vehicle.</p>

        <div class="service-container">

            <div class="card">
                <h3>Car Washing</h3>
                <p>Professional cleaning for your vehicle.</p>
            </div>

            <div class="card">
                <h3>Engine Repair</h3>
                <p>Reliable engine inspection and repair.</p>
            </div>

            <div class="card">
                <h3>AC Repair</h3>
                <p>Keep your car cooling system working properly.</p>
            </div>

            <div class="card">
                <h3>Tyre Services</h3>
                <p>Tyre inspection and replacement services.</p>
            </div>

        </div>

        <a href="Services.jsp" class="view-btn">View All Services</a>
    </section>

    <!-- About Us -->
    <section class="about" id="about">

        <div class="about-image">
            <img src="https://images.unsplash.com/photo-1727893119356-1702fe921cf9?auto=format&fit=crop&w=1000&q=80"
                 alt="AutoCare Workshop">
        </div>

        <div class="about-content">
            <h2>About AutoCare</h2>
            <p>
                AutoCare is an online vehicle service platform designed
                to make car maintenance simple and convenient.
            </p>
            <p>
                Our goal is to connect customers with reliable vehicle
                services and provide an easy online booking experience.
            </p>
            <a href="Services.jsp" class="btn">Explore Services</a>
        </div>
    </section>

    <!-- Contact -->
    <section class="contact" id="contact">
        <h2>Contact Us</h2>
        <p>Have any questions? Get in touch with us.</p>

        <p>Email: mdaavez3@gmail.com</p>
        <p>Phone: +91 9960513126</p>
    </section>

    <!-- Footer -->
    <footer>
        <h3>AutoCare</h3>
        <p>Your vehicle deserves the best care.</p>
        <p>&copy; 2026 AutoCare. All Rights Reserved.</p>
    </footer>

</body>
</html>
