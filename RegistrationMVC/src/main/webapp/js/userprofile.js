// Handle profile image upload
const profileImage = document.getElementById('profileImage');
const fileUpload = document.getElementById('fileUpload');

fileUpload.addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            profileImage.src = e.target.result;
        };
        reader.readAsDataURL(file);
    }
});

// Handle form submission
document.getElementById('profileForm').addEventListener('submit', function(event) {
    event.preventDefault();

    // Get form data
    const firstName = document.getElementById('firstName').value;
    const lastName = document.getElementById('lastName').value;
    const username = document.getElementById('username').value;

    // You can send this data to your server or process it further
    console.log({
        firstName,
        lastName,
        username
    });

    alert('Profile updated successfully!');
});



