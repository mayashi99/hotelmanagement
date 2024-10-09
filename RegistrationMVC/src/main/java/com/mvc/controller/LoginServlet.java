package com.mvc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.mvc.dao.LoginDao;
import com.mvc.dao.RegisterDao;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String userName = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        LoginDao loginDao = new LoginDao();
	        
	        
	        
	        try {
	            // Insert the user data into the database
	            String userRegistered = loginDao.loginUser(userName, password);

	            if (userRegistered.equals("Login successful!")) {
	            	System.out.println( "Login ssssuccessful!"); 
	                // If registration is successful, redirect to Home.jsp
	            	 request.setAttribute("userName", userName);
	                request.getRequestDispatcher("/Home.jsp").forward(request, response);
	            } else {
	            	System.out.println( "Login cd!"); 
	                // If registration fails, display the error message
	                request.setAttribute("errMessage", userRegistered);
	                request.getRequestDispatcher("/Login.jsp").forward(request, response);
	            }
	        } catch (Exception e) {
	            // Handle any unexpected exceptions
	            e.printStackTrace();
	            request.setAttribute("errMessage", "An error occurred: " + e.getMessage());
	            request.getRequestDispatcher("/Login.jsp").forward(request, response);
	        }
	}
;
}
