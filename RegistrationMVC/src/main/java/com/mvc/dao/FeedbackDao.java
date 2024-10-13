package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.FeedbackBean;
import com.mvc.util.DBConnection;

public class FeedbackDao {
    
    public String submitFeedback(FeedbackBean feedbackBean) {
        String name = feedbackBean.getName();
        String email = feedbackBean.getEmail();
        String hotelName = feedbackBean.getHotelName();
        String feedback = feedbackBean.getFeedback();
        
        Connection con = null;
        PreparedStatement preparedStatement = null;
        
        try {
            con = DBConnection.createConnection();
            String query = "INSERT INTO feedback(name, email, hotelName, feedback) VALUES (?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, hotelName);
            preparedStatement.setString(4, feedback);
            
            int i = preparedStatement.executeUpdate();
            
            if (i != 0) {
                return "SUCCESS";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Something went wrong.";
    }
}

