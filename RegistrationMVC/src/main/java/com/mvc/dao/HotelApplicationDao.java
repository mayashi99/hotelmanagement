package com.mvc.dao;

import com.mvc.bean.HotelApplicationBean;
import com.mvc.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HotelApplicationDao {

	// Method to retrieve pending hotel applications from the database
	public List<HotelApplicationBean> getPendingHotels() {
		List<HotelApplicationBean> pendingHotels = new ArrayList<>();
		String query = "SELECT * FROM hotel_applications WHERE approved = 0"; // Use approved field

		try (Connection connection = DBConnection.createConnection(); // Call createConnection()
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(query)) {

			while (resultSet.next()) {
				HotelApplicationBean hotel = new HotelApplicationBean();
				hotel.setHotelId(resultSet.getInt("hotelId")); 
				hotel.setHotelName(resultSet.getString("hotelName"));
				hotel.setLocation(resultSet.getString("location"));
				hotel.setOwnerName(resultSet.getString("ownerName"));
				hotel.setDescription(resultSet.getString("description"));
				hotel.setApproved(resultSet.getBoolean("approved")); 
				hotel.setImageUri(resultSet.getString("imageUri")); 
				pendingHotels.add(hotel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pendingHotels;
	}

	// Method to approve a hotel application by its ID
	public void approveHotel(int hotelId) { 
		String query = "UPDATE hotel_applications SET approved = 1 WHERE hotelId = ?"; // Use approved field
		try (Connection connection = DBConnection.createConnection(); 
				PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, hotelId); 
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Method to remove a hotel application by its ID
	public void removeHotel(int hotelId) {
		String query = "DELETE FROM hotel_applications WHERE hotelId = ?"; // Use hotelId
		try (Connection connection = DBConnection.createConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, hotelId); 
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<HotelApplicationBean> getApprovedHotels() {
		List<HotelApplicationBean> approvedHotels = new ArrayList<>();
		String query = "SELECT * FROM hotel_applications WHERE approved = 1"; // Query to get approved hotels

		try (Connection connection = DBConnection.createConnection(); 
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(query)) {

			// Loop through the results and create HotelApplicationBean objects
			while (resultSet.next()) {
				HotelApplicationBean hotel = new HotelApplicationBean();
				hotel.setHotelId(resultSet.getInt("hotelId"));
				hotel.setHotelName(resultSet.getString("hotelName"));
				hotel.setLocation(resultSet.getString("location"));
				hotel.setOwnerName(resultSet.getString("ownerName"));
				hotel.setDescription(resultSet.getString("description"));
				hotel.setApproved(resultSet.getBoolean("approved")); 
				hotel.setImageUri(resultSet.getString("imageUri")); 

				// Add the hotel to the list of approved hotels
				approvedHotels.add(hotel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return approvedHotels;
	}

}
