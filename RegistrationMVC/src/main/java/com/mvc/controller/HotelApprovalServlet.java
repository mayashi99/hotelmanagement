package com.mvc.controller;

import com.mvc.dao.HotelApplicationDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/hotelApproval")
public class HotelApprovalServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private HotelApplicationDao hotelApplicationDao;

    @Override
    public void init() {
        hotelApplicationDao = new HotelApplicationDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String hotelIdStr = request.getParameter("hotelId");  // Get hotelId as String

        try {
            int hotelId = Integer.parseInt(hotelIdStr);  // Convert String to int

            if ("approve".equals(action)) {
                hotelApplicationDao.approveHotel(hotelId);  // Call approveHotel with int
                response.getWriter().write("Hotel approved successfully.");
            } else if ("remove".equals(action)) {
                hotelApplicationDao.removeHotel(hotelId);  // Call removeHotel with int
                response.getWriter().write("Hotel removed successfully.");
            } else {
                response.getWriter().write("Invalid action.");
            }
        } catch (NumberFormatException e) {
            response.getWriter().write("Invalid hotel ID.");
        }
    }
}
