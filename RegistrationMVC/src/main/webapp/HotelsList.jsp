<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.mvc.bean.HotelBean"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HotelList</title>

<link rel="stylesheet" href="CSS/HotelList.css">
</head>
<body>

	<div class="topnav">
		<div class="test">
			<img src="images/logovnew.png" alt="logo" width="270">

		</div>
		<div>
			<a  href="Home.jsp">Home</a> <a href="Blog.jsp">Blog</a> <a
				href="Hotel.jsp">Hotels</a>
		</div>
		<div class="log">
			<a href="Register.jsp">Signup</a> <a href="Login.jsp">Login</a>
		</div>
	</div>
	<br>
	<br>
	<%
	HotelBean hotels[] = (HotelBean[]) request.getAttribute("hotels");
	for (HotelBean hotel : hotels) {
		if (hotel != null) {
			System.out.println("SQL Error: " + hotel.getName());
	%>
	<div class="card">
		<img src="hotellist.jpg" alt="Hotel Image" class="hotel-image">
		<h3><%=hotel.getName()%></h3>
		<p>
			Email:<%=hotel.getDescription()%>
		</p>
		<p>Phone: 0123456789</p>
		<div class="rating">★★★★★</div>
		<button class="follow-btn">Book</button>
	</div>
	<%
	}
	}
	%>


</body>
</html>