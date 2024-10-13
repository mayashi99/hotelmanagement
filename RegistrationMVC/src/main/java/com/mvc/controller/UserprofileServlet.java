package com.mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.mvc.bean.UserprofileBean;
import com.mvc.dao.UserprofileDao;

@WebServlet("/UserProfileServlet")
public class UserprofileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("update".equals(action)) {
            // Get form parameters
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String dob = request.getParameter("dob");
           // String profileImage = request.getParameter("profileImage");

            // Create a UserProfileBean object and set the data
            UserprofileBean userProfile = new UserprofileBean();
            userProfile.setUsername(username);
            userProfile.setEmail(email);
            userProfile.setAddress(address);
            userProfile.setDob(dob);
            //userProfile.setProfileImage(profileImage);

            // Call DAO to update user profile
            UserprofileDao userProfileDao = new UserprofileDao();
            String result = userProfileDao.updateUserProfile(userProfile);

            // Redirect based on the result
            if ("SUCCESS".equals(result)) {
                response.sendRedirect("profile_success.jsp");
            } else {
                response.sendRedirect("profile_error.jsp");
            }

        } else if ("delete".equals(action)) {
            // Get the username to delete
            String username = request.getParameter("username");

            // Call DAO to delete user profile
            UserprofileDao userProfileDao = new UserprofileDao();
            String result = userProfileDao.deleteUserProfile(username);

            // Redirect based on the result
            if ("SUCCESS".equals(result)) {
                response.sendRedirect("delete_success.jsp");
            } else {
                response.sendRedirect("delete_error.jsp");
            }
        }
    }
}
