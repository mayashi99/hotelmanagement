<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Package</title>
    <link rel="stylesheet" href="CSS/Update.css">
</head>
<body>
    <div class="form-container">

        <img src="images/update.jpg" alt="Update Hotel" class="form-image">

        <h1>Update or Delete Package</h1>
        <form id="updatePackageForm">
            <div class="form-group">
                <label for="packageId">Package ID (for update/delete):</label>
                <input type="text" id="packageId" placeholder="Enter package ID" required>
            </div>
            <div class="form-group">
                <label for="packageName">Package Name:</label>
                <input type="text" id="packageName" placeholder="Enter package name">
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" placeholder="Enter package description"></textarea>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" placeholder="Enter package price">
            </div>
            <div class="form-group">
                <label for="image">Upload New Image (optional):</label>
                <input type="file" id="image" accept="image/*">
            </div>
            <div class="button-group">
                <button type="button" id="updateBtn">Update Package</button>
                <button type="button" id="deleteBtn">Delete Package</button>
            </div>
        </form>

        <!-- Spacing between update form and the navigation button -->
        <div class="space-between"></div>

        <!-- Button with icon to navigate to the create packages page -->
        <a href="create.html" class="nav-button">
            <i class="fas fa-plus-circle"></i> Go to Create Packages
        </a>

        </div>

    <script src="js/update.js"></script>

</body>
</html>