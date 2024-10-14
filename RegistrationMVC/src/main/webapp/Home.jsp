<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Voyage Vibes</title>



<!-- Main css -->
<link rel="stylesheet" href="CSS/Home.css">

</head>

<body>

	<div class="topnav">
		<div class="test">
			<img src="images/logovnew.png" alt="logo" width="270">
			
		</div>
		<div>
			<a class="active" href="home">Home</a> <a href="Blog.jsp">Blog</a>
			<a href="Hotel.jsp">Hotels</a> 
		</div>
		<div class="log">
			<a href="Register.jsp">Signup</a> 
			<a href="Login.jsp">Login</a>
		</div>
	</div>

	<div class="header">
		<div class="container">
		<!--<video width="100%" height="650" controls>
  <source src="images/video.mp4" type="video/mp4">

</video>-->
		
			 <img src="images/home1.jpg" alt="logo" width="100%" height="650"> 

			<div class="text-block_1">
				<div class="top-left">
					<h1>Voyage Vibes Hotel Reservation</h1>
				</div>
			</div>
			<div class="centered">

				<form method="get" action="${pageContext.request.contextPath}/SearchServlet" >
					<h2>Leave the stress to us, so you can savor every precious
						moment</h2>
					<div class=" form-box ">
						<input type="text" class="'search-field business"
							placeholder="Location..."> <label for="date">Date:</label>
						<input class="data-input" type="date" id="date" name="date">
						<button class="search-btn" type="submit">Search</button>
						
            
					</div>
				</form>
			</div>
		</div>

	</div>
	
	<br>

	<h1 style="margin-left: 90px;"> SUMMER OFFER</h1>
	<div class="row">
    <div class="column">
      <img src="images/Beige White Modern Minimalist Simple House For Sale Poster.png" alt="wedding">
      <img src="images/Blue and White Simple Travel Poster.png" alt="rock">


    </div>
    <div class="column">
    <div class="w3-content w3-section" style="max-width: 600px" >
		<img class="mySlides1" src="images/offer 13.jpg" style="width: 100%">
		<img class="mySlides1" src="images/offer 10.jpg" style="width: 100%">
		<img class="mySlides1" src="images/offer 3.jpg" style="width: 100%">
	</div>
      <img src="images/offer 3.jpg" alt="wedding">
      
    </div>

    <div class="column">
      <img src="images/offer 1.png" alt="falls">
      <img src="images/offer 2.jpg" alt="ocun">
     
    </div>
    
    <div class="column">
      <img src="images/offer 11.jpg" alt="falls">
      <img src="images/offer 12.png" alt="ocun">
     
    </div>
    
    
  </div>
  
	<br>
	<div class="scroll-container">
  <img src="images/display 1.jpg" alt="Cinque Terre">
  <img src="images/display 2.jpg" alt="Forest">
  <img src="images/display 3.jpg" alt="Northern Lights">
  <img src="images/display 4.jpg" alt="Mountains">
  <img src="images/display 5.jpg" alt="Mountains">
  <img src="images/display 6.jpg" alt="Mountains">
</div>

	
<br>
<div class="about-section">
  <h1>About Us Page</h1>
  <p>Welcome to our Hotel Reservation System, </p>
  <p>a user-friendly platform designed to make booking accommodations simple and stress-free.</p>
</div>
<br>
	


	

	<script src="js/index.js"></script>
	
</body>
</html>