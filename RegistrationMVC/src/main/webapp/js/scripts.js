// Existing functions and event listeners

function showSection(sectionId) {
    const sections = document.querySelectorAll('.section');
    sections.forEach((section) => {
        section.style.display = section.id === sectionId ? 'block' : 'none';
    });

    const links = document.querySelectorAll('.tab-link');
    links.forEach((link) => {
        link.classList.remove('active');
    });
    
    document.querySelector(`a[data-section="${sectionId}"]`).classList.add('active');
}

document.addEventListener('DOMContentLoaded', function () {
    // Initialize default section
    showSection('dashboard');

    // Charts Configuration
    const bookingsChart = new Chart(document.getElementById('bookingsChart').getContext('2d'), {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
            datasets: [{
                label: 'Bookings',
                data: [100, 150, 200, 250, 300],
                backgroundColor: 'rgba(76, 175, 80, 0.2)',
                borderColor: '#4CAF50',
                borderWidth: 1
            }]
        }
    });

    const usersChart = new Chart(document.getElementById('usersChart').getContext('2d'), {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
            datasets: [{
                label: 'Users',
                data: [10, 50, 75, 80, 120],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: '#FF6384',
                borderWidth: 1
            }]
        }
    });

    const hotelsChart = new Chart(document.getElementById('hotelsChart').getContext('2d'), {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
            datasets: [{
                label: 'Hotels',
                data: [1, 3, 5, 10, 15],
                backgroundColor: 'rgba(255, 206, 86, 0.2)',
                borderColor: '#FFCE56',
                borderWidth: 1
            }]
        }
    });

    const ratingsChart = new Chart(document.getElementById('ratingsChart').getContext('2d'), {
        type: 'pie',
        data: {
            labels: ['1 Star', '2 Stars', '3 Stars', '4 Stars', '5 Stars'],
            datasets: [{
                label: 'Ratings Distribution',
                data: [5, 10, 20, 40, 25],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    '#FF6384',
                    '#36A2EB',
                    '#FFCE56',
                    '#4BC0C0',
                    '#9966FF'
                ],
                borderWidth: 1
            }]
        }
    });

    const pricingChart = new Chart(document.getElementById('pricingChart').getContext('2d'), {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
            datasets: [{
                label: 'Average Price',
                data: [200, 210, 220, 230, 240],
                backgroundColor: 'rgba(255, 206, 86, 0.2)',
                borderColor: '#FFCE56',
                borderWidth: 1
            }]
        }
    });

    // Modal functionality

    // Get modal elements
    const modal = document.getElementById('myModal');
    const openModalButtons = document.querySelectorAll('.open-modal');
    const closeModalButton = document.querySelector('.close-modal');

    // Open modal when clicking the button
    openModalButtons.forEach(button => {
        button.addEventListener('click', function () {
            modal.style.display = 'block';
        });
    });

    // Close modal when clicking the close button
    closeModalButton.addEventListener('click', function () {
        modal.style.display = 'none';
    });

    // Close modal when clicking outside the modal
    window.addEventListener('click', function (event) {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });
});


function acceptHotel(hotelId) {
    fetch('hotelApproval', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `action=approve&hotelId=${hotelId}`
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        // Optionally refresh the hotel applications list
        showSection('hotel-applications');
    })
    .catch(error => console.error('Error:', error));
}

function removeHotel(hotelId) {
    fetch('hotelApproval', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `action=remove&hotelId=${hotelId}`
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        // Optionally refresh the hotel applications list
        showSection('hotel-applications');
    })
    .catch(error => console.error('Error:', error));
}


function showSection(sectionId) {
    const sections = document.querySelectorAll('.section');
    sections.forEach((section) => {
        section.style.display = 'none';
    });
    
    const activeSection = document.getElementById(sectionId);
    if (activeSection) {
        activeSection.style.display = 'block';
    }
}

