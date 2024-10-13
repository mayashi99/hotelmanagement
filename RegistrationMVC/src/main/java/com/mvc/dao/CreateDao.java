package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.CreateBean;
import com.mvc.util.DBConnection;

public class CreateDao {
    
    public String createPackage(CreateBean packageBean) {
        String packageName = packageBean.getPackageName();
        String description = packageBean.getDescription();
        double price = packageBean.getPrice();
        String imagePath = packageBean.getImagePath();
        
        Connection con = null;
        PreparedStatement preparedStatement = null;
        
        try {
            con = DBConnection.createConnection();
            String query = "INSERT INTO packages(packageName, description, price, imagePath) VALUES (?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, packageName);
            preparedStatement.setString(2, description);
            preparedStatement.setDouble(3, price);
            preparedStatement.setString(4, imagePath);
            
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
