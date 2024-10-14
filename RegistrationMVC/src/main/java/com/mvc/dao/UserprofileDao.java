package com.mvc.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.UserprofileBean;
import com.mvc.util.DBConnection;

public class UserprofileDao {
	
	 // Method to update the user profile
    public String updateUserProfile(UserprofileBean userprofileBean) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.createConnection();
            String query = "UPDATE users SET email=?, nationality=?  WHERE userName=?";
            ps = con.prepareStatement(query);
            ps.setString(1,  userprofileBean.getEmail());
            ps.setString(2,  userprofileBean.getAddress());
           // ps.setString(3,  userprofileBean.getDob());
           // ps.setString(4,  userprofileBean.getProfileImage());
            ps.setString(3,  userprofileBean.getUsername());

            int i = ps.executeUpdate();
            if (i != 0) {
                return "SUCCESS";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Error: " + e.getMessage());
        }

        return "Update failed!";
    }

    // Method to delete the user profile
    public String deleteUserProfile(String username) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.createConnection();
            String query = "DELETE FROM users WHERE username=?";
            ps = con.prepareStatement(query);
            ps.setString(1, username);

            int i = ps.executeUpdate();
            if (i != 0) {
                return "SUCCESS";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Deletion failed!";
    }
}



