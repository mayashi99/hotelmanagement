package com.mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean.FeedbackBean;
import com.mvc.dao.FeedbackDao;

public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String hotelName = request.getParameter("hotel name");
        String feedback = request.getParameter("feedback");

        FeedbackBean feedbackBean = new FeedbackBean();
        feedbackBean.setName(name);
        feedbackBean.setEmail(email);
        feedbackBean.setHotelName(hotelName);
        feedbackBean.setFeedback(feedback);

        FeedbackDao feedbackDao = new FeedbackDao();
        String result = feedbackDao.submitFeedback(feedbackBean);

        if (result.equals("SUCCESS")) {
            response.sendRedirect("thankyou.html");
        } else {
            response.sendRedirect("error.html");
        }
    }
}
