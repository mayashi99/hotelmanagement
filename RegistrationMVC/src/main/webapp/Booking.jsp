<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Form</title>
<link rel="stylesheet" href="CSS/booking.css">

</head>
<body>

<div class="topnav">
		<div class="test">
			<img src="images/logovnew.png" alt="logo" width="270">
			
		</div>
		<div>
			<a class="active" href="home">Home</a> <a href="blog">Blog</a>
			<a href="Hotels.jsp">Hotels</a> 
		</div>
		<div class="log">
			<a href="Register.jsp">Signup</a> 
			<a href="Login.jsp">Login</a>
		</div>
	</div>

<div class="booking-form">
        <!-- Image container inside the form -->
        <div class="image-container">
            <!-- Large image -->
            <img src="images/book 1.jpeg" alt="Large Hotel Image" class="large-image"> <!-- Replace with your large image path -->
            
            <!-- Small images in front of the large image -->
            <div class="small-images">
                <img src="images/book 2.jpeg" alt="Small Hotel Image 1"> <!-- Replace with your small image paths -->
                <img src="images/book 3.jpeg" alt="Small Hotel Image 2">
                <img src="images/book 4.jpg" alt="Small Hotel Image 3">
              
            </div>
        </div>

        <div class="form-content">

<h2>Hotel Booking</h2>
<form id="bookingForm" action="${pageContext.request.contextPath}/BookingServlet" method="post">


           
                <div class="form-control">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your full name">
                    <div id="nameError" class="error"></div>
                </div>
                
                <div class="form-control">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number">
                    <div id="phoneError" class="error"></div>
                </div>

                <div class="form-control">
                    <label for="email">E-mail</label>
                    <input type="email" id="email" name="email" placeholder="example@example.com">
                    <div id="emailError" class="error"></div>
                </div>
                
                <div class="form-control">
                    <label for="roomType">Room Type</label>
                    <select id="roomType" name="roomType">
                        <option value="">Please Select</option>
                        <option value="Stanard Room">Stanard Room</option>
                        <option value="Primium Room">Primium Room</option>
                        <option value="Two Room Suite">Two Room Suite</option>
                    </select>
                    <div id="roomTypeError" class="error"></div>
                </div>
                
                <div class="form-control guest-count">
                    <div>
                        <label for="numAdults">Number of Adults</label>
                        <input type="number" id="numAdults" name="numAdults" min="1" placeholder="e.g., 2">
                        <div id="numAdultsError" class="error"></div>
                    </div>
                    <div>
                        <label for="numChildren">Number of Children</label>
                        <input type="number" id="numChildren" name="numChildren" min="0" placeholder="e.g., 1">
                        <div id="numChildrenError" class="error"></div>
                    </div>
                </div>

                <div class="form-control">
                    <label for="arrivalDate">Arrival Date & Time</label>
                    <input type="datetime-local" id="arrivalDate" name="arrivalDate">
                    <div id="arrivalDateError" class="error"></div>
                </div>
                
                <div class="form-control">
                    <label for="departureDate">Departure Date</label>
                    <input type="date" id="departureDate" name="departureDate">
                    <div id="departureDateError" class="error"></div>
                </div>
                
                <div class="form-control">
                    <label>Want a Pickup?</label>
                    <div class="radio-options">
                        <label><input type="radio" id="pickupYes" name="pickup" value="1"> Yes Please!</label>
                        <label><input type="radio" id="pickupNo" name="pickup" value="0"> No Thanks</label>
                    </div>
                    <div id="pickupError" class="error"></div>
                </div>
                
                <div class="form-control">
                    <label for="specialRequests">Special Requests</label>
                    <textarea id="specialRequests" name="specialRequests" rows="4" placeholder="Enter any special requests"></textarea>
                </div>
                 <button class="submit-btn" onclick="window.location.href='Payment.jsp';">Submit</button>
               
            </form>
            
                   </div>
    </div>
            
            
<script src="<%= request.getContextPath() %>js/booking.js"></script> 
</body>
</html>