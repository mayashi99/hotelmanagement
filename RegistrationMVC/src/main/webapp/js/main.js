
    // Wait for the DOM to fully load
    document.addEventListener("DOMContentLoaded", function() {

        // Get form and elements
        const form = document.getElementById("login-form");
        const username = document.getElementById("username");
        const password = document.getElementById("password");

        // Add event listener to form submit
        form.addEventListener("submit", function(event) {
            let isValid = true;
            let errorMessage = '';

            // Validate username (check if empty)
            if (username.value.trim() === "") {
                isValid = false;
                errorMessage += "Username is required.\n";
            }

            // Validate password (check if empty and meets length criteria)
            if (password.value.trim() === "") {
                isValid = false;
                errorMessage += "Password is required.\n";
            } else if (password.value.length < 6) {
                isValid = false;
                errorMessage += "Password must be at least 6 characters long.\n";
            }

            // If validation fails, prevent form submission and show error
            if (!isValid) {
                event.preventDefault();
                alert(errorMessage);  // Display error messages
            }
        });
    });
