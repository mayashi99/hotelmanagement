package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class LoginDao {
	public String loginUser(String username, String password) {
		 System.out.println( password); 
		 System.out.println( username); 
	    // SQL query to check if the user exists with the provided username or email and password
	    String query = "SELECT * FROM users WHERE userName = ? AND password = ?";
	    String resultMessage = "Oops.. Something went wrong!";

	    try (Connection con = DBConnection.createConnection()) {
	        // Test the database connection
	        if (con == null) {
	            System.out.println("Connection to the database failed.");
	            return "Database connection failed!";
	        } else {
	            System.out.println("Database connection successful.");
	        }

	        try (PreparedStatement preparedStatement = con.prepareStatement(query)) {
	            // Set the parameters for the query
	            preparedStatement.setString(1, username);
	            preparedStatement.setString(2, password);

	            // Execute the query
	            try (ResultSet resultSet = preparedStatement.executeQuery()) {
	            
	                if (resultSet.next()) {
	                	
	                    resultMessage = "Login successful!";
	                   
	                } else {
	                    resultMessage = "Invalid username/email or password.";
	                    
	                }
	            }
	        }
	    } catch (SQLException e) {
	        System.out.println("SQL Error: " + e.getMessage());  // Print SQL error message for debugging
	        e.printStackTrace();  // Log the stack trace for further investigation
	    }

	    return resultMessage;  // Return the result of the login process
	}
}
