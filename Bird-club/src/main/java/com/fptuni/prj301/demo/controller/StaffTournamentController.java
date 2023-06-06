/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.model.Tournament;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "StaffTournamentController", urlPatterns = {"/StaffTournamentController"})
public class StaffTournamentController extends HttpServlet {

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
     if (action.equalsIgnoreCase("addTournament")) {
        // Retrieve form data for the tournament
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String registrationDeadlineStr = request.getParameter("registrationDeadline");
        String startDateStr = request.getParameter("startDate");
        String endDateStr = request.getParameter("endDate");
        int fee = Integer.parseInt(request.getParameter("fee"));
        int numberOfParticipant = 0; 
        int totalPrize = Integer.parseInt(request.getParameter("totalPrize"));

        // Parse date strings into java.util.Date objects
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date registrationDeadline = null;
        Date startDate = null;
        Date endDate = null;
        try {
            registrationDeadline = dateFormat.parse(registrationDeadlineStr);
            startDate = dateFormat.parse(startDateStr);
            endDate = dateFormat.parse(endDateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        // Create a Tournament object
        Tournament tournament = new Tournament();
        tournament.setId(id);
        tournament.setName(name);
        tournament.setDescription(description);
        tournament.setRegistrationDeadline(registrationDeadline);
        tournament.setStartDate(startDate);
        tournament.setEndDate(endDate);
        tournament.setFee(fee);
        tournament.setNumberOfParticipant(numberOfParticipant);
        tournament.setTotalPrize(totalPrize);

        // Call the DAO to add the tournament to the database
        TournamentManager tournamentDAO = new TournamentManager();
        boolean success = tournamentDAO.addTournament(tournament);

        if (success) {
            response.sendRedirect("Staff_tournament.jsp");
            request.getSession().setAttribute("msg", "Added Successfully");
        } else {
            response.sendRedirect("Staff_tournament.jsp");
            request.getSession().setAttribute("msg", "Added Fails");
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
