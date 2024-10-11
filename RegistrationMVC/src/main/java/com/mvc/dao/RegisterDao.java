package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class RegisterDao {
    public String registerUser(RegisterBean registerBean) {
        // Get individual fields from the RegisterBean
        String firstName = registerBean.getFirstName();
        String lastName = registerBean.getLastName();
        String email = registerBean.getEmail();
        String userName = registerBean.getUserName();
        String password = registerBean.getPassword();
        String phoneNumber = registerBean.getPhoneNumber();
        String nationality = registerBean.getNationality();
        String dob = registerBean.getDob();

        // SQL query to insert the user into the database
        String query = "INSERT INTO users (SlNo, firstName, lastName, email, userName, password, phoneNumber, nationality, dob) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?)";
        String resultMessage = "Oops.. Something went wrong!";

        try (Connection con = DBConnection.createConnection()) {
            // Test the database connection here
            if (con == null) {
                System.out.println("Connection to the database failed.");
                return "Database connection failed!";
            } else {
                System.out.println("Database connection successful.");
            }

            try (PreparedStatement preparedStatement = con.prepareStatement(query)) {

                // Set the parameters for the query
                preparedStatement.setString(1, firstName);
                preparedStatement.setString(2, lastName);
                preparedStatement.setString(3, email);
                preparedStatement.setString(4, userName);
                preparedStatement.setString(5, password);
                preparedStatement.setString(6, phoneNumber);
                preparedStatement.setString(7, nationality);
                preparedStatement.setString(8, dob);

                // Execute the query and return a success message if rows are affected
                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    resultMessage = "User successfully registered!";
                } else {
                    resultMessage = "User registration failed.";
                }
            }
        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());  // Print SQL error message for debugging
            e.printStackTrace();  // Log the stack trace for further investigation
        }

        return resultMessage;  // Return the result of the registration process
    }
}
