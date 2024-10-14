<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Account Settings</title>

<link rel="stylesheet" href="CSS/userprofile.css">
</head>
<body>

	<!-- Sidebar -->
	<div class="sidebar">
		<div class="menu">
			<h1>User Profile</h1>
			<div class="profile-card">
				<img src="images/user.jpg" alt="Profile Picture" style="width: 20%">
				<h2>Jessica Alba</h2>
				<p>@jennywilson</p>

				<div class="info">
					<p>
						<span>Username:</span> Jenny Wilson <span class="edit-icon">✎</span>
					</p>
					<p>
						<span>Email:</span> jenny@gmail.com <span class="edit-icon">✎</span>
					</p>
					<p>
						<span>Address:</span> New York, USA <span class="edit-icon">✎</span>
					</p>

					<p>
						<span>DOB:</span> April 28, 1981 <span class="edit-icon">✎</span>
					</p>
				</div>
			</div>
			<br> <a href="Home.jsp">Home</a> <br> <br> <a
				href="Feedback.jsp">Feedback</a>
				 <a
				href="viewbooking.jsp">View Booking</a>
				


		</div>


	</div>




	<br>
	<div class="profile-container">
		<div class="header">
			<h1>
				<span class="logo-bold">My</span><span class="logo-light">Profile</span>
			</h1>
			<a href="#" class="logout">Logout</a>
		</div>

		<div class="profile-pic">
			<img src="images/user.jpg" alt="Profile Image" id="profileImage">
			<label for="fileUpload">Change Image ↓</label> <input type="file"
				id="fileUpload" accept="image/*">
		</div>

		<form action="${pageContext.request.contextPath}/UserProfileServlet" method="post" id="profileForm">
		<input type="hidden" name="action" value="update">
			<div class="form-group">
				<label for="username">Username</label> <input type="text"
					id="username" value="Jenny Wilson" name="username">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="text" id="email"
					value="jenny@gmail.com" name="email">
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input type="text" id="address"
					value="New York,USA" name="address">
			</div>

			<div class="form-group">
				<label for="DOB">DOB</label> <input type="date" id="date"
					value="23/09/2008" name="dob">
			</div>


			<div class="form-group">
				<button type="submit" class="btn save">Save Changes</button>
			</div>
		
		</form>

		<form action="${pageContext.request.contextPath}/UserProfileServlet" method="post" id="profileForm">
		<input type="hidden" name="action" value="delete">
			<div class="form-group">
				<label for="username">Username</label> <input type="text"
					id="username" value="Jenny Wilson" name="username">
			</div>
		

			<div class="form-group">
				<button type="submit" class="btn save">Delete</button>
			</div>
		
		</form>

	</div>


	<script src="userprofile.js"></script>
</body>
</html>
