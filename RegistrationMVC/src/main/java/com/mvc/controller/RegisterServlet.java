package com.mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;

public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the form parameters
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phoneNumber");
        String nationality = request.getParameter("nationality");
        String dob = request.getParameter("dob");

        // Create an instance of RegisterBean to store the form data
        RegisterBean registerBean = new RegisterBean();
        registerBean.setFirstName(firstName);
        registerBean.setLastName(lastName);
        registerBean.setEmail(email);
        registerBean.setUserName(userName);
        registerBean.setPassword(password);
        registerBean.setPhoneNumber(phoneNumber);
        registerBean.setNationality(nationality);
        registerBean.setDob(dob);

        // Create an instance of RegisterDao to communicate with the database
        RegisterDao registerDao = new RegisterDao();

        try {
            // Insert the user data into the database
            String userRegistered = registerDao.registerUser(registerBean);

            if (userRegistered.equals("User successfully registered!")) {
                // If registration is successful, redirect to Home.jsp
                request.getRequestDispatcher("/Home.jsp").forward(request, response);
            } else {
                // If registration fails, display the error message
                request.setAttribute("errMessage", userRegistered);
                request.getRequestDispatcher("/Register.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // Handle any unexpected exceptions
            e.printStackTrace();
            request.setAttribute("errMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
        }
    }
}
