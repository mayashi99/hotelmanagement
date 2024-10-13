package com.mvc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.mvc.bean.HotelBean;
import com.mvc.bean.SearchBean;
import com.mvc.dao.LoginDao;
import com.mvc.dao.SearchDao;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 SearchDao searchDao = new SearchDao();
		 SearchBean searchBean = new SearchBean();
	        
	        
	        
	        try {
	            // Insert the user data into the database
	        	HotelBean[] hotels = searchDao.searchHotel(searchBean);

	            if (true) {
	            	System.out.println( "Login ssssuccessful!"); 
	                // If registration is successful, redirect to Home.jsp
	            	request.setAttribute("hotels", hotels);
	                request.getRequestDispatcher("/HotelsList.jsp").forward(request, response);
	            } else {
	            	System.out.println( "Login cd!"); 
	                // If registration fails, display the error message
	               // request.setAttribute("errMessage", userRegistered);
	               // request.getRequestDispatcher("/Login.jsp").forward(request, response);
	            }
	        } catch (Exception e) {
	            // Handle any unexpected exceptions
	            e.printStackTrace();
	            request.setAttribute("errMessage", "An error occurred: " + e.getMessage());
	            request.getRequestDispatcher("/Login.jsp").forward(request, response);
	        }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
