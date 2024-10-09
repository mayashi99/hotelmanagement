<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hotel Management Admin Dashboard</title>
    <link rel="stylesheet" href="adminstyles.css">
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="menu">
            <h2>Admin Panel</h2>
            <a href="#dashboard" class="tab-link active" data-section="dashboard" onclick="showSection('dashboard')">Dashboard</a>
            <a href="#hotel-list" class="tab-link" data-section="hotel-list" onclick="showSection('hotel-list')">Hotel Applications</a>
            <a href="#notifications" class="tab-link" data-section="notifications" onclick="showSection('notifications')">Notifications</a>
        </div>
        <div class="profile">
            <img src="profile-picture.jpg" alt="Admin">
            <p>Admin Name</p>
            <p>admin@example.com</p>
        </div>
    </div>

    <!-- Content Area -->
    <div class="content">
        <!-- Dashboard Section -->
        <section id="dashboard" class="section">
            <h1>Dashboard</h1>
            <div class="analytics-cards">
                <div class="card">
                    <h2>Average Rating</h2>
                    <p id="average-rating">4.5/5</p>
                </div>
                <div class="card">
                    <h2>Total Bookings</h2>
                    <p id="total-bookings">125</p>
                </div>
                <div class="card">
                    <h2>Average Price</h2>
                    <p id="average-price">$200/night</p>
                </div>
            </div>
        </section>

        <!-- Hotel List Section -->
        <section id="hotel-list" class="section" style="display: none;">
            <h1>Hotels Waiting for Approval</h1>
            <table class="hotel-table">
                <thead>
                    <tr>
                        <th>Hotel Name</th>
                        <th>Location</th>
                        <th>Owner</th>
                        <th>Description</th>
                        <th>Images</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Hotel California</td>
                        <td>Los Angeles</td>
                        <td>John Doe</td>
                        <td>Beautiful beachfront hotel.</td>
                        <td><img src="hotel1.jpg" alt="Hotel Image"></td>
                        <td>
                            <button class="accept-btn" onclick="acceptHotel(this)">Accept</button>
                            <button class="remove-btn" onclick="removeHotel(this)">Remove</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Mountain Retreat</td>
                        <td>Denver</td>
                        <td>Jane Smith</td>
                        <td>Cozy hotel with mountain views.</td>
                        <td><img src="hotel2.jpg" alt="Hotel Image"></td>
                        <td>
                            <button class="accept-btn" onclick="acceptHotel(this)">Accept</button>
                            <button class="remove-btn" onclick="removeHotel(this)">Remove</button>
                        </td>
                    </tr>
                    <!-- Add more hotel rows as needed -->
                </tbody>
            </table>
        </section>
    </div>

    <script src="scripts.js"></script>
</body>
</html>
