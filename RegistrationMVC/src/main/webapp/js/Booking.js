document.getElementById('bookingForm').addEventListener('submit', function(event) {
		event.preventDefault(); // Prevent the default form submission

		

		    let valid = true; // Flag to track form validity

		    // Clear previous error messages
		    const errorElements = document.querySelectorAll('.error');
		    errorElements.forEach(el => el.innerText = "");

		    // Name validation
		    const name = document.getElementById('name').value;
		    const namePattern = /^[A-Za-z\s]+$/;
		    if (!name.match(namePattern) || name.trim() === "") {
		        valid = false;
		        document.getElementById('nameError').innerText = "Name must be a valid string.";
		    }

		    // Phone number validation
		    const phone = document.getElementById('phone').value;
		    const phonePattern = /^[0-9]{10}$/;
		    if (!phone.match(phonePattern)) {
		        valid = false;
		        document.getElementById('phoneError').innerText = "Phone number must be exactly 10 digits.";
		    }

		    // Email validation
		    const email = document.getElementById('email').value;
		    const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
		    if (!email.match(emailPattern)) {
		        valid = false;
		        document.getElementById('emailError').innerText = "Invalid email format.";
		    }

		    // Room type validation
		    const roomType = document.getElementById('roomType').value;
		    if (roomType === "") {
		        valid = false;
		        document.getElementById('roomTypeError').innerText = "Please select a room type.";
		    }

		    // Number of adults validation
		    const numAdults = document.getElementById('numAdults').value;
		    if (numAdults === "" || numAdults < 1) {
		        valid = false;
		        document.getElementById('numAdultsError').innerText = "Please enter a valid number of adults.";
		    }

		    // Number of children validation
		    const numChildren = document.getElementById('numChildren').value;
		    if (numChildren === "" || numChildren < 0) {
		        valid = false;
		        document.getElementById('numChildrenError').innerText = "Please enter a valid number of children.";
		    }

		    // Arrival date validation
		    const arrivalDate = document.getElementById('arrivalDate').value;
		    const now = new Date().toISOString().split('.')[0]; // Get current datetime in 'YYYY-MM-DDTHH:MM' format
		    if (arrivalDate === "" || arrivalDate < now) {
		        valid = false;
		        document.getElementById('arrivalDateError').innerText = "Arrival date must be today or later.";
		    }

		    // Departure date validation
		    const departureDate = document.getElementById('departureDate').value;
		    if (departureDate === "") {
		        valid = false;
		        document.getElementById('departureDateError').innerText = "Departure date is required.";
		    } else if (new Date(departureDate) <= new Date(arrivalDate)) {
		        valid = false;
		        document.getElementById('departureDateError').innerText = "Departure date must be after the arrival date.";
		    }

		    // Pickup option validation
		    const pickupYes = document.getElementById('pickupYes').checked;
		    const pickupNo = document.getElementById('pickupNo').checked;
		    if (!pickupYes && !pickupNo) {
		        valid = false;
		        document.getElementById('pickupError').innerText = "Please select a pickup option.";
		    }

		    // If valid, proceed to submit the form
		    if (valid) {
		        this.submit();
		    }
		});



   

/**
 * 
 */