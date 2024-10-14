package com.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionManager {

    // Step 1: Create a private static instance of the class (singleton instance)
    private static DatabaseConnectionManager instance;
    private static Connection connection;

    // Database URL, username, and password
    private static final String url = "jdbc:mysql://localhost:3306/hotelmanagement";
    private static final String username = "root";  // Replace with your MySQL username
    private static final String password = "";  // Replace with your MySQL password

    // Step 2: Private constructor to prevent direct instantiation
    private DatabaseConnectionManager() {
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish the connection
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    // Step 3: Public method to provide access to the single instance
    public static DatabaseConnectionManager getInstance() {
        if (instance == null) {
            // Synchronized block to prevent multiple threads from creating multiple instances
            synchronized (DatabaseConnectionManager.class) {
                if (instance == null) {
                    instance = new DatabaseConnectionManager();
                }
            }
        }
        return instance;
    }

    // Method to get the connection object
    public Connection getConnection() {
        return connection;
    }

    // Main method to test the Singleton pattern connection
    public static void main(String[] args) {
        DatabaseConnectionManager dbManager = DatabaseConnectionManager.getInstance();
        Connection con = dbManager.getConnection();

        // Test if the connection was successful or not
        if (con != null) {
            System.out.println("Connection successful!");
        } else {
            System.out.println("Connection failed!");
        }
    }
}
