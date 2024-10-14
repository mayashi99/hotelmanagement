package com.mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.mvc.bean.PaymentBean;
import com.mvc.dao.PaymentDao;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
       String address = request.getParameter("address");
        String city = request.getParameter("city");
      String state = request.getParameter("state");   
      String zip = request.getParameter("zip");
        String cardName = request.getParameter("cardName");
        String cardNumber = request.getParameter("cardNumber");
     String expMonth = request.getParameter("expMonth");
      String expYear = request.getParameter("expYear");
       String cvv = request.getParameter("cvv");
          
        // Set the data in the PaymentBean
        PaymentBean paymentBean = new PaymentBean();
        paymentBean.setFullName(fullName);
        paymentBean.setEmail(email);
        paymentBean.setAddress(address);
        paymentBean.setCity(city);
        paymentBean.setState(state);
        paymentBean.setZip(zip);
        paymentBean.setCardName(cardName);
        paymentBean.setCardNumber(cardNumber);
        paymentBean.setExpMonth(expMonth);
        paymentBean.setExpYear(expYear);
       paymentBean.setCvv(cvv);

        // Pass the bean to the DAO for processing
        PaymentDao paymentDao = new PaymentDao();
        String result = paymentDao.processPayment(paymentBean);

        // Redirect based on the result
        if ("SUCCESS".equals(result)) {
        	
        	 
           // response.sendRedirect("payment_success.jsp");
        } else {
          //  response.sendRedirect("payment_error.jsp");
        }
    }
}
