<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="CSS/Feedback.css">
</head>
<body>
    <div class="form-container">
        <form id="feedbackForm">
            <!-- Image above the form title -->
            <div class="form-image">
                <img src="images/feedb.jpg" alt="Form Image">
            </div>
            <h2>Feedback</h2>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter Name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" required>
            
            <label for="hotel name">Hotel Name:</label>
            <input type="text" id="hotel name" name="hotel name" placeholder="Hotel Name" required>
            
            <label for="feedback">Feedback:</label>
            <textarea id="feedback" name="feedback" placeholder="Your Feedback" rows="4" required></textarea>

            <button type="submit" class="submit-btn">Submit</button>

        </form>
    </div>

    <script src="js/feedback.js"></script>

</body>
</html>