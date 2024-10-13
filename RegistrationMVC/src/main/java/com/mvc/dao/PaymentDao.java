package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.PaymentBean;
import com.mvc.util.DBConnection;

public class PaymentDao {
	
	    public String processPayment(PaymentBean paymentBean) {
	        String fullName = paymentBean.getFullName();
	        String email = paymentBean.getEmail();
        String address = paymentBean.getAddress();
	        String city = paymentBean.getCity();
	        String state = paymentBean.getState();
	        String zip = paymentBean.getZip();
	        String cardName = paymentBean.getCardName();
	        String cardNumber = paymentBean.getCardNumber();
	        String expMonth = paymentBean.getExpMonth();
	        String expYear = paymentBean.getExpYear();
	        String cvv = paymentBean.getCvv();

	        Connection con = null;
	        PreparedStatement preparedStatement = null;

	        try {
	            con = DBConnection.createConnection();
	            String query = "INSERT INTO payments(fullName, email, cardNumber) VALUES (?, ?, ?)";
	            preparedStatement = con.prepareStatement(query);
	            preparedStatement.setString(1, fullName);
	            preparedStatement.setString(2, email);
	            preparedStatement.setString(3, cardNumber);
	            preparedStatement.setString(3, address);
            preparedStatement.setString(4, city);
            preparedStatement.setString(5, state);
	            preparedStatement.setString(6, zip);
	            preparedStatement.setString(7, cardName);
	            
	            preparedStatement.setString(9, expMonth);
	            preparedStatement.setString(10, expYear);
	            preparedStatement.setString(11, cvv);

	            int i = preparedStatement.executeUpdate();

	            if (i != 0) {
	                return "SUCCESS";
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return "Failed to process payment";
	    }
	}
