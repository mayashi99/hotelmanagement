<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Package</title>
    <link rel="stylesheet" href="CSS/Create.css">
</head>
<body>
    <div class="form-container">
        <!-- Add the image here -->
        <img src="images/create.jpg" alt="Create Hotel Package" class="form-image">
        
        <h1>Create Hotel Package</h1>
        <form id="createPackageForm">
            <div class="form-group">
                <label for="packageName">Package Name:</label>
                <input type="text" id="packageName" placeholder="Enter package name" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" placeholder="Enter package description" required></textarea>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" placeholder="Enter package price" required>
            </div>
            <div class="form-group">
                <label for="image">Upload Image:</label>
                <input type="file" id="image" accept="image/*" required>
            </div>
            <div class="button-group">
                <a href="#" class="nav-button" id="createBtn">Create Package</a>
                <a href="update.html" class="nav-button">Go to Update Packages</a>
            </div>
            
            
        </form>
    </div>

    <script src="create.js"></script>
</body>
</html>