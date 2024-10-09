package com.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {

    // Method to create a database connection
    public static Connection createConnection() {
        Connection connection = null;

        // Update these values to match your MySQL setup
        String url = "jdbc:mysql://localhost:3306/hotelmanagement";  // Updated URL
        String username = "root";  // Replace with your MySQL username
        String password = "";  // Replace with your MySQL password

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Failed to create the database connection.");
            e.printStackTrace();
        }

        return connection;
    }

    // Main method to test the connection
    public static void main(String[] args) {
        Connection con = createConnection();  // Call the createConnection method

        // Test if the connection was successful or not
        if (con != null) {
            System.out.println("Connection successful!");
        } else {
            System.out.println("Connection failed!");
        }
    }
}
