<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HotelList</title>

<!-- Main css -->
<link rel="stylesheet" href="CSS/Hotel.css">


</head>
<body>

<div class="topnav">
		<div class="test">
			<img src="images/logovnew.png" alt="logo" width="270">
			
		</div>
		<div>
			<a  href="Home.jsp">Home</a> <a href="blog.jsp">Blog</a>
			<a class="active" href="Hotels.jsp">Hotels</a> 
		</div>
		<div class="log">
			<a href="Register.jsp">Signup</a> 
			<a href="Login.jsp">Login</a>
		</div>
	</div>


<div class="hotel-card">
    <img src="images/hotel4.jpg" alt="Hotel Image" class="hotel-image">
    <div class="hotel-info">
        <h3 class="hotel-name">The Orchid Hotel</h3>
        <p class="hotel-location">Ashram Road, Ahmedabad</p>
        <div class="hotel-features">
            <span>📶</span> <span>🍽️</span> <span>🧴</span> <span>🚗</span> <span>🏊‍♂️</span> <span>👨‍👩‍👧‍👦</span> <span>Couple Friendly</span>
        </div>
        <div class="hotel-rating">
            <span class="rating-value">8.2</span> <span class="rating-desc">Excellent (245 reviews)</span>
        </div>
        <p class="last-booked">Last Booked - 18 hours ago</p>
    </div>
    <div class="hotel-pricing">
        <p class="discount">16% Off! <span class="old-price">RS:2500</span></p>
        <p class="current-price">RS:2100 <span>1 Room/Night</span></p>
        <button class="book-now-btn" onclick="window.location.href='Booking.jsp';">Book Now</button>
    </div>
</div>

<div class="hotel-card">
    <img src="images/hotel1.jpg" alt="Hotel Image" class="hotel-image">
    <div class="hotel-info">
        <h3 class="hotel-name">The Ritz-Carlton</h3>
        <p class="hotel-location">Ashram Road, Ahmedabad</p>
        <div class="hotel-features">
            <span>📶</span> <span>🍽️</span> <span>🧴</span> <span>🚗</span> <span>🏊‍♂️</span> <span>👨‍👩‍👧‍👦</span> <span>Couple Friendly</span>
        </div>
        <div class="hotel-rating">
            <span class="rating-value">8.2</span> <span class="rating-desc">Excellent (245 reviews)</span>
        </div>
        <p class="last-booked">Last Booked - 18 hours ago</p>
    </div>
    <div class="hotel-pricing">
        <p class="discount">16% Off! <span class="old-price">RS:3000</span></p>
        <p class="current-price">RS:2900 <span>1 Room/Night</span></p>
         <button class="book-now-btn" onclick="window.location.href='Booking.jsp';">Book Now</button>
    </div>
</div>

<div class="hotel-card">
    <img src="images/hotel2.jpg" alt="Hotel Image" class="hotel-image">
    <div class="hotel-info">
        <h3 class="hotel-name">The Plaza Hotel</h3>
        <p class="hotel-location">Ashram Road, Ahmedabad</p>
        <div class="hotel-features">
            <span>📶</span> <span>🍽️</span> <span>🧴</span> <span>🚗</span> <span>🏊‍♂️</span> <span>👨‍👩‍👧‍👦</span> <span>Couple Friendly</span>
        </div>
        <div class="hotel-rating">
            <span class="rating-value">8.2</span> <span class="rating-desc">Excellent (245 reviews)</span>
        </div>
        <p class="last-booked">Last Booked - 18 hours ago</p>
    </div>
    <div class="hotel-pricing">
        <p class="discount">16% Off! <span class="old-price">RS:1250</span></p>
        <p class="current-price">RS:1210 <span>1 Room/Night</span></p>
          <button class="book-now-btn" onclick="window.location.href='Booking.jsp';">Book Now</button>
    </div>
</div>

<div class="hotel-card">
    <img src="images/hotel3.jpg" alt="Hotel Image" class="hotel-image">
    <div class="hotel-info">
        <h3 class="hotel-name">The Peninsula</h3>
        <p class="hotel-location">Ashram Road, Ahmedabad</p>
        <div class="hotel-features">
            <span>📶</span> <span>🍽️</span> <span>🧴</span> <span>🚗</span> <span>🏊‍♂️</span> <span>👨‍👩‍👧‍👦</span> <span>Couple Friendly</span>
        </div>
        <div class="hotel-rating">
            <span class="rating-value">8.2</span> <span class="rating-desc">Excellent (245 reviews)</span>
        </div>
        <p class="last-booked">Last Booked - 18 hours ago</p>
    </div>
    <div class="hotel-pricing">
        <p class="discount">16% Off! <span class="old-price">RS:2250</span></p>
        <p class="current-price">RS:2210 <span>1 Room/Night</span></p>
           <button class="book-now-btn" onclick="window.location.href='Booking.jsp';">Book Now</button>
    </div>
</div>

<div class="about-section">
  <h1>About Us Page</h1>
  <p>Welcome to our Hotel Reservation System, </p>
  <p>a user-friendly platform designed to make booking accommodations simple and stress-free.</p>
</div>
<br>


</body>
</html>