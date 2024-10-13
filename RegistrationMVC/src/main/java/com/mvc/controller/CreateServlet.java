package com.mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.mvc.bean.CreateBean;
import com.mvc.dao.CreateDao;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10, // 10MB
                 maxRequestSize = 1024 * 1024 * 50) // 50MB
public class CreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String packageName = request.getParameter("packageName");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        
        Part filePart = request.getPart("image");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = "C:/uploads/" + fileName; // adjust path as needed
        
        filePart.write(uploadPath);
        
        CreateBean packageBean = new CreateBean();
        packageBean.setPackageName(packageName);
        packageBean.setDescription(description);
        packageBean.setPrice(price);
        packageBean.setImagePath(uploadPath);
        
        CreateDao packageDao = new CreateDao();
        String result = packageDao.createPackage(packageBean);
        
        if (result.equals("SUCCESS")) {
            response.sendRedirect("success.html");
        } else {
            response.sendRedirect("error.html");
        }
    }
}

