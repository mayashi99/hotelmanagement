<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="com.mvc.bean.HotelApplicationBean"%>
<%@ page import="com.mvc.dao.HotelApplicationDao"%>

<%
// Create an instance of the DAO once at the top
HotelApplicationDao hotelApplicationDao = new HotelApplicationDao();
%>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="CSS/adminstyles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="js/scripts.js"></script>
<style>
/* Additional styles for modern look */
.bookings-table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

.bookings-table th, .bookings-table td {
	border: 1px solid #ddd;
	padding: 10px;
	text-align: left;
}

.bookings-table th {
	background-color: #007bff;
	color: white;
}

.notification-card {
	background: #f0f4ff;
	border-left: 5px solid #007bff;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
}

.notifications-list {
	margin-top: 20px;
	list-style-type: none;
	padding: 0;
}

.notifications-list li {
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<!-- Sidebar -->
	<div class="sidebar">
		<div class="menu">
			<h2>Admin Panel</h2>
			<a href="#dashboard" class="tab-link" data-section="dashboard"
				onclick="showSection('dashboard')"><i class="fas fa-chart-line"></i>
				Dashboard</a> <a href="#hotel-applications" class="tab-link"
				data-section="hotel-applications"
				onclick="showSection('hotel-applications')"><i
				class="fas fa-hotel"></i> Hotel Applications</a> <a
				href="#approved-hotels" class="tab-link"
				data-section="approved-hotels"
				onclick="showSection('approved-hotels')"><i
				class="fas fa-check-circle"></i> Approved Hotels</a> <a href="#bookings"
				class="tab-link" data-section="bookings"
				onclick="showSection('bookings')"><i class="fas fa-calendar-alt"></i>
				Bookings</a> <a href="#notifications" class="tab-link"
				data-section="notifications" onclick="showSection('notifications')"><i
				class="fas fa-bell"></i> Notifications</a> <a href="#settings"
				class="tab-link" data-section="settings"
				onclick="showSection('settings')"><i class="fas fa-cogs"></i>
				Settings</a>
		</div>
		<div class="profile">
			<img
				src="https://e7.pngegg.com/pngimages/518/320/png-clipart-computer-icons-mobile-app-development-android-my-account-icon-blue-text.png"
				alt="Admin">
			<p>Admin Name</p>
			<p>admin@example.com</p>
		</div>
	</div>

	<!-- Content Area -->
	<div class="content">
		<!-- Dashboard Section -->
		<section id="dashboard" class="section active">
			<h1>Dashboard</h1>
			<div class="card-container">
				<div class="card">
					<h3>Bookings</h3>
					<canvas id="bookingsChart"></canvas>
				</div>
				<div class="card">
					<h3>Users</h3>
					<canvas id="usersChart"></canvas>
				</div>
				<div class="card">
					<h3>Hotels</h3>
					<canvas id="hotelsChart"></canvas>
				</div>
				<div class="card">
					<h3>Ratings</h3>
					<canvas id="ratingsChart"></canvas>
				</div>
				<div class="card">
					<h3>Pricing</h3>
					<canvas id="pricingChart"></canvas>
				</div>
			</div>
		</section>

		<div class="hotel-sections">
			<!-- Hotel Applications Section -->
			<section id="hotel-applications" class="section">
				<h1>Hotels Waiting for Approval</h1>
				<div class="hotel-card-container">
					<%
					List<HotelApplicationBean> pendingHotels = hotelApplicationDao.getPendingHotels();
					for (HotelApplicationBean hotel : pendingHotels) {
					%>
					<div class="hotel-card">
						<img src="<%=hotel.getImageUri()%>" alt="Hotel Image"
							class="hotel-image">
						<div class="hotel-info">
							<h2><%=hotel.getHotelName()%></h2>
							<p>
								<strong>Location:</strong>
								<%=hotel.getLocation()%></p>
							<p>
								<strong>Owner:</strong>
								<%=hotel.getOwnerName()%></p>
							<p>
								<strong>Description:</strong>
								<%=hotel.getDescription()%></p>
						</div>
						<div class="hotel-actions">
							<button class="accept-btn"
								onclick="acceptHotel(<%=hotel.getHotelId()%>)">Accept</button>
							<button class="remove-btn"
								onclick="removeHotel(<%=hotel.getHotelId()%>)">Remove</button>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</section>

			<!-- Approved Hotels Section -->
			<section id="approved-hotels" class="section">
				<h1>Approved Hotels</h1>
				<div class="approved-hotel-container">
					<%
					List<HotelApplicationBean> approvedHotels = hotelApplicationDao.getApprovedHotels();
					for (HotelApplicationBean hotel : approvedHotels) {
					%>
					<div class="hotel-card">
						<img src="<%=hotel.getImageUri()%>" alt="Hotel Image"
							class="hotel-image">
						<div class="hotel-info">
							<h2><%=hotel.getHotelName()%></h2>
							<p>
								<strong>Location:</strong>
								<%=hotel.getLocation()%></p>
							<p>
								<strong>Owner:</strong>
								<%=hotel.getOwnerName()%></p>
							<p>
								<strong>Description:</strong>
								<%=hotel.getDescription()%></p>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</section>
		</div>



		<!-- Bookings Section -->
		<section id="bookings" class="section" style="display: none;">
			<h1>Bookings</h1>
			<table class="bookings-table">
				<thead>
					<tr>
						<th>Booking ID</th>
						<th>Hotel Name</th>
						<th>User Name</th>
						<th>Check-in Date</th>
						<th>Check-out Date</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1001</td>
						<td>Luxury Inn</td>
						<td>Alice Williams</td>
						<td>2024-10-10</td>
						<td>2024-10-15</td>
					</tr>
					<tr>
						<td>1002</td>
						<td>Beach Resort</td>
						<td>Robert Brown</td>
						<td>2024-11-05</td>
						<td>2024-11-12</td>
					</tr>
					<tr>
						<td>1003</td>
						<td>Grand Hotel</td>
						<td>Sarah Connor</td>
						<td>2024-12-01</td>
						<td>2024-12-05</td>
					</tr>
				</tbody>
			</table>
		</section>

		<!-- Notifications Section -->
		<section id="notifications" class="section" style="display: none;">
			<h1>Notifications</h1>
			<ul class="notifications-list">
				<li><div class="notification-card">
						<strong>New Application:</strong> Hotel California has been
						submitted for approval.
					</div></li>
				<li><div class="notification-card">
						<strong>Booking Confirmation:</strong> Booking ID 1001 confirmed
						for Alice Williams.
					</div></li>
				<li><div class="notification-card">
						<strong>Maintenance Alert:</strong> Beach Resort needs urgent
						maintenance.
					</div></li>
				<li><div class="notification-card">
						<strong>New Message:</strong> You have a new message from John Doe
						regarding the application.
					</div></li>
			</ul>
		</section>

		<!-- Settings Section -->
		<section id="settings" class="section" style="display: none;">
			<h1>Settings</h1>
			<form>
				<label for="admin-email">Admin Email:</label> <input type="email"
					id="admin-email" value="admin@example.com" required> <label
					for="change-password">Change Password:</label> <input
					type="password" id="change-password" placeholder="New Password"
					required>
				<button type="submit">Save Changes</button>
			</form>
		</section>
	</div>

	
</body>
</html>
