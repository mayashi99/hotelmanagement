package com.mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.mvc.bean.UpdateBean;
import com.mvc.dao.UpdateDao;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10, // 10MB
                 maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String packageId = request.getParameter("packageId");

        if ("update".equalsIgnoreCase(action)) {
            updatePackage(request, response, packageId);
        } else if ("delete".equalsIgnoreCase(action)) {
            deletePackage(response, packageId);
        }
    }

    private void updatePackage(HttpServletRequest request, HttpServletResponse response, String packageId)
            throws ServletException, IOException {

        String packageName = request.getParameter("packageName");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        Part filePart = request.getPart("image");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = "C:/uploads/" + fileName; // adjust path as needed

        filePart.write(uploadPath);

        UpdateBean packageBean = new UpdateBean();
        packageBean.setPackageId(Integer.parseInt(packageId));
        packageBean.setPackageName(packageName);
        packageBean.setDescription(description);
        packageBean.setPrice(price);
        packageBean.setImagePath(uploadPath);

        UpdateDao packageDao = new UpdateDao();
        String result = packageDao.updatePackage(packageBean);

        if (result.equals("SUCCESS")) {
            response.sendRedirect("success.html");
        } else {
            response.sendRedirect("error.html");
        }
    }

    private void deletePackage(HttpServletResponse response, String packageId) throws IOException {
        UpdateDao packageDao = new UpdateDao();
        String result = packageDao.deletePackage(Integer.parseInt(packageId));

        if (result.equals("SUCCESS")) {
            response.sendRedirect("success.html");
        } else {
            response.sendRedirect("error.html");
        }
    }
}