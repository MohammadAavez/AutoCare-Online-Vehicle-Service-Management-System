<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Services Page</title>
<link rel="stylesheet" href="CSS/Services.css">
<link rel="stylesheet" href="CSS/navbar.css">
</head>
<body>



 <%@ include file="navbar.jsp" %> 
 <h1>Services Page</h1>
<div class="container">
<div class="card">
<img src="images/washing.png" alt="Car Washing">
<h1>Car Washing</h1>
<p>Get professional car washing service to keep your vehicle clean, shiny and fresh.>
<form action="booking" method="get">
<input type="hidden" name="service" value="Car Washing" >
<button type="submit">Book Now</button>
</form>
</div>


<div class="card">
    <img src="images/battery.png" alt="Battery Service">
    <h2>Battery Service</h2>
    <p>Get reliable car battery testing, charging and replacement services from experienced technicians.</p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="Battery Service">
        <button type="submit">Book Now</button>
    </form>
</div>


<div class="card">
    <img src="images/brake.png" alt="Brake Repair">
    <h2>Brake Repair</h2>
    <p>Ensure your safety with professional brake inspection, brake pad replacement and repair services.</p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="Brake Repair">
        <button type="submit">Book Now</button>
    </form>
</div>

<div class="card">
    <img src="images/acrepair.png" alt="AC Repair">
    <h2>AC Repair</h2>
    <p>Get expert car AC repair, gas refilling and maintenance services for comfortable driving.</p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="AC Repair">
        <button type="submit">Book Now</button>
    </form>
</div>


<div class="card">
    <img src="images/carpolishing.png" alt="Car Polishing">
    <h2>Car Polishing</h2>
    <p>Restore your vehicle's shine with professional car polishing and exterior detailing services.</p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="Car Polishing">
        <button type="submit">Book Now</button>
    </form>
</div>

<div class="card">
    <img src="images/engine.png" alt="Engine Repair">
    <h2>Engine Repair</h2>
    <p>Get expert engine repair services to improve your vehicle's performance and reliability.</p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="Engine Repair">
        <button type="submit">Book Now</button>
    </form>
</div>

<div class="card">
    <img src="images/painting.png" alt="Car Denting and Painting">

    <h2>Car Denting & Painting</h2>
    <p>
        Get professional car denting and painting services to remove
        dents, repair scratches, and restore your car's original look.
    </p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="Car Denting & Painting">
        <button type="submit">Book Now</button>
    </form>
</div>


<div class="card">
    <img src="images/cleaning.png" alt="Car Interior Cleaning">

    <h2>Car Interior Cleaning</h2>
    <p>
        Get professional car interior cleaning services to remove
        dust, stains, and dirt from seats, carpets, dashboard,
        and other interior surfaces.
    </p>
    <form action="booking" method="get">
        <input type="hidden" name="service" value="Car Interior Cleaning">
        <button type="submit">Book Now</button>
    </form>
</div>


</div>
</body>
</html>