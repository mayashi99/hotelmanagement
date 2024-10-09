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
            <h2>User Profile</h2>
             <img src="images/user.jpg" alt="John" style="width:80%">
           
            <p>Shamali Perera</p>
            <p>shamali@gmail.com</p>
            
        </div>
        
        <a href="/Home">Home</a> 
            <a href="/Feedback">Feedback</a> 
    </div>
    


 <div class="form-container">
    <form action="" id="profileForm">
      <div class="column-left">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="gender">Gender:</label>
        <select name="gender" id="gender" required>
          <option value="male">male</option>
          <option value="female">Female</option>
          <option value="other">Other</option>
        </select>

        <label for="age">Age:</label>
        <input type="number" name="age" id="age" required>

       
        <button type="button" onclick="submitForm()">Edit changes</button>
         <button type="button" onclick="submitForm()">Cancle</button>
       
       
       
       
      </div>

      <div class="column-right">
        <label for="photo">Profile Picture:</label>
        <input type="file" name="photo" id="photo" onchange="displayProfilePic()">
        <img src="#" alt="Profile Picture" style="display: none;" id="profilePic">
      </div>
    </form>
    
    
     <form action="" id="profileForm">
      <div class="column-left">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="gender">Gender:</label>
        <select name="gender" id="gender" required>
          <option value="male">male</option>
          <option value="female">Female</option>
          <option value="other">Other</option>
        </select>

        <label for="age">Age:</label>
        <input type="number" name="age" id="age" required>
        
        
         <button type="button" onclick="submitForm()">Submit</button>

       
      </div>

      <div class="column-right">
        <label for="photo">Profile Picture:</label>
        <input type="file" name="photo" id="photo" onchange="displayProfilePic()">
        <img src="#" alt="Profile Picture" style="display: none;" id="profilePic">
      </div>
    </form>
  </div>
    <script src="userprofile.js"></script>
</body>
</html>
