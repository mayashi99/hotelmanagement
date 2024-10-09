<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking Registration</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <script>
        function togglePassword() {
            var password = document.getElementsByName('password')[0];
            var confirmPassword = document.getElementsByName('conpassword')[0];
            if (password.type === "password") {
                password.type = "text";
                confirmPassword.type = "text";
            } else {
                password.type = "password";
                confirmPassword.type = "password";
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Create Your Account</h2>

        <div class="social-login">
            <button class="social-btn google-btn">
                <img src="https://w7.pngwing.com/pngs/687/86/png-transparent-google-logo-google-adwords-g-suite-google-account-google-logo-chess-google-chrome-thumbnail.png" alt="Google Icon">
                Login with Google
            </button>
            <button class="social-btn facebook-btn">
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg" alt="Facebook Icon">
                Login with Facebook
            </button>
        </div>

        <p class="divider-text">Or</p>

        <form name="form" action="${pageContext.request.contextPath}/RegisterServlet" method="post" onsubmit="return validate()">
            <h3>Personal Information</h3>
            <div class="form-row">
                <div class="form-group">
                    <input type="text" name="firstName" placeholder="First Name" required>
                </div>
                <div class="form-group">
                    <input type="text" name="lastName" placeholder="Last Name" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <input type="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <input type="text" name="phoneNumber" placeholder="Phone Number" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <input type="text" name="nationality" placeholder="Nationality" required>
                </div>
                <div class="form-group">
                    <input type="date" name="dob" placeholder="Date of Birth" required>
                </div>
            </div>

            <h3>Account Information</h3>
            <div class="form-row">
                <div class="form-group">
                    <input type="text" name="username" placeholder="Username" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <input type="password" name="conpassword" placeholder="Confirm Password" required>
                </div>
            </div>

            <div class="form-row">
                <label>
                    <input type="checkbox" onclick="togglePassword()"> Show Password
                </label>
            </div>

            <div class="form-row">
                <button class="btn btn-register" style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">Register</button>
            </div>
            <div class="form-row">
                <button class="btn btn-reset" type="reset" style="color: black; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
