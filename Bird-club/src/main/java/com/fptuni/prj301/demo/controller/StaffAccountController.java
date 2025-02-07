/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.StaffAccountManager;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tool.utils.Mailer;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "StaffAccountController", urlPatterns = {"/StaffAccountController"})
public class StaffAccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");

        if (action != null && action.equals("approve")) {
            String userId = request.getParameter("UID");

            // Call the DAO to update the user's status as "active"
            StaffAccountManager userDao = new StaffAccountManager();
            boolean success = userDao.approveUser(userId);

            if (success) {
                String email= userDao.getUserEmail(userId);
                Mailer.send("prj301.pgnb@gmail.com","nqlgrybvvyqjoaxw", email,"Bird Club","You account have been approve", "http://localhost:8080/chimowners/member_checkout.jsp");
                response.sendRedirect(request.getContextPath() +"staff_homepage.jsp");
            } else {
                response.sendRedirect("staff_approval_failure.jsp");
            }
        } else if (action != null && action.equals("view")) {

            StaffAccountManager staffAccountManager = new StaffAccountManager();
            List<UserSession> userList = staffAccountManager.getUsersWithUnactiveStatus();

            if (!userList.isEmpty()) {
                request.setAttribute("userList", userList);
                request.getRequestDispatcher("/staff_member.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/no_unactive_users.jsp");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
