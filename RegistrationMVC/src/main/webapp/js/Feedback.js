/**
 * 
 */
document.getElementById('feedbackForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const subject = document.getElementById('subject').value;
    const message = document.getElementById('message').value;

    if (name && email && subject && message) {
        alert('Thank you for your feedback, ' + name + '!');
        document.getElementById('feedbackForm').reset();
    } else {
        alert('Please fill out all fields.');
    }
});