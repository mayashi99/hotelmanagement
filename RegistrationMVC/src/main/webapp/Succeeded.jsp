<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Success</title>
    <link rel="stylesheet" href="CSS/Succeeded.css">
</head>
<body>
    <div class="payment-container">
        <div class="success-icon">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="green" width="60px" height="60px">
                <path d="M12 0C5.373 0 0 5.373 0 12s5.373 12 12 12 12-5.373 12-12S18.627 0 12 0zm-2.292 17.292l-4.292-4.292 1.414-1.414 2.878 2.878 6.878-6.878 1.414 1.414-8.292 8.292z"/>
            </svg>
        </div>
        <h1>Payment succeeded!</h1>
        <p>Your transaction was completed successfully. Thank you for your purchase!</p>
       <button class="dashboard-btn" onclick="window.location.href='Userprofile.jsp';">Go to Your Dashboard</button>

        <div class="confetti"></div>
    </div>

    <script src="js/Succeeded.js"></script>
</body>
</html>
