package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.UpdateBean;
import com.mvc.util.DBConnection;

public class UpdateDao {

    // Method to update the package in the database
    public String updatePackage(UpdateBean packageBean) {
        String packageName = packageBean.getPackageName();
        String description = packageBean.getDescription();
        double price = packageBean.getPrice();
        String imagePath = packageBean.getImagePath();
        int packageId = packageBean.getPackageId();

        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "UPDATE packages SET packageName=?, description=?, price=?, imagePath=? WHERE packageId=?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, packageName);
            preparedStatement.setString(2, description);
            preparedStatement.setDouble(3, price);
            preparedStatement.setString(4, imagePath);
            preparedStatement.setInt(5, packageId);

            int i = preparedStatement.executeUpdate();

            if (i != 0) {
                return "SUCCESS";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Something went wrong.";
    }

    // Method to delete the package from the database
    public String deletePackage(int packageId) {
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "DELETE FROM packages WHERE packageId=?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1, packageId);

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