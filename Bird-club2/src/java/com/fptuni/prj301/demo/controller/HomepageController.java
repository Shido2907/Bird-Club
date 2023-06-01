
package com.fptuni.prj301.demo.controller;
import com.fptuni.prj301.demo.dbmanager.getGallery;
import com.fptuni.prj301.demo.model.Image;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomepageController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            getGallery load = new getGallery();
            List<Image> gallery = load.loadGallery();
            request.setAttribute("gallery", gallery);
            RequestDispatcher rd = request.getRequestDispatcher("member_homepage.jsp");
            rd.forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
