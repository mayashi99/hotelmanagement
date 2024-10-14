<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<!-- Main css -->
<link rel="stylesheet" href="CSS/Payment.css">

</head>
<body>
<div>
	<div class="topnav">
		<div class="test">
			<img src="images/logovnew.png" alt="logo" width="270">

		</div>
		<div>
			<a href="home.jsp">Home</a> 
			<a href="blog.jsp">Blog</a> 
			<a href="Hotels.jsp">Hotels</a>
		</div>


		<div class="profile-container">
			<div class="profile">
				<img src="images/user.jpg" alt="user" width="50"> <span
					class="username"></span>
				<div class="dropdown-content">
					<a href="#">Edit Profile</a> <a href="#">Settings</a> <a
						href="logout">Logout</a>
				</div>
			</div>
		</div>
	</div>
	
	</div>
	<br>

	<div class="container">


		<form action="${pageContext.request.contextPath}/PaymentServlet"
			method="post" onsubmit="return validate()">
			<div class="image">
				<img src="images/payment.jpg" alt="pay" width="350">
			</div>

			<div class="row">

				<div class="col">
					<h3 class="title">Details</h3>

					<div class="inputBox">
						<label for="name"> Full Name: </label> <input type="text"
							id="name" placeholder="Enter your full name" name="name">
					</div>

					<div class="inputBox">
						<label for="email"> Email: </label> <input type="text" id="email"
							placeholder="Enter email address" name="email">
					</div>

					<div class="inputBox">
						<label for="address"> Address: </label> <input type="text"
							id="address" placeholder="Enter address" name="address">
					</div>

					<div class="inputBox">
						<label for="city"> City: </label> <input type="text" id="city"
							placeholder="Enter city" name="city">
					</div>

					<div class="flex">

						<div class="inputBox">
							<label for="state"> State: </label> <input type="text" id="state"
								placeholder="Enter state" name="state">
						</div>

						<div class="inputBox">
							<label for="zip"> Zip Code: </label> <input type="number"
								id="zip" placeholder="123 456" name="zip">
						</div>

					</div>

				</div>
				<div class="col">
					<h3 class="title">Payment</h3>

					<div class="inputBox">
						<label for="name"> Card Accepted: </label> <img
							src="https://media.geeksforgeeks.org/wp-content/uploads/20240715140014/Online-Payment-Project.webp"
							alt="credit/debit card image">
					</div>

					<div class="inputBox">
						<label for="cardName"> Name On Card: </label> <input type="text"
							id="cardName" placeholder="Enter card name" name="cardName">
					</div>

					<div class="inputBox">
						<label for="cardNum"> Credit Card Number: </label> <input
							type="text" id="cardNum" placeholder="1111-2222-3333-4444"
							maxlength="19" name="cardNumber">
					</div>

					<div class="inputBox">
						<label for="">Exp Month:</label> <select name="expMonth" id="">
							<option value="">Choose month</option>
							<option value="January">January</option>
							<option value="February">February</option>
							<option value="March">March</option>
							<option value="April">April</option>
							<option value="May">May</option>
							<option value="June">June</option>
							<option value="July">July</option>
							<option value="August">August</option>
							<option value="September">September</option>
							<option value="October">October</option>
							<option value="November">November</option>
							<option value="December">December</option>
						</select>

					</div>


					<div class="flex">
						<div class="inputBox">
							<label for="">Exp Year:</label> <select name="expYear" id="">
								<option value="">Choose Year</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
								<option value="2025">2025</option>
								<option value="2026">2026</option>
								<option value="2027">2027</option>
							</select>
						</div>

						<div class="inputBox">
							<label for="cvv">CVV</label> <input type="number" id="cvv"
								placeholder="1234" name="CVV">
						</div>
					</div>

				</div>

			</div>
<input type="button" class="submit_btn" value="Proceed to Checkout" onclick="window.location.href='Succeeded.jsp';">

		</form>

	</div>
	<br>

	<div class="about-section">
		<h1>About Us Page</h1>
		<p>Welcome to our Hotel Reservation System,</p>
		<p>a user-friendly platform designed to make booking
			accommodations simple and stress-free.</p>
	</div>
	<br>

	<script type="text/javascript" src="Payment.js"></script>

</body>
</html>