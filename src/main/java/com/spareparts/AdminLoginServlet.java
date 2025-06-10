package com.spareparts;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Optional: Forward to login page if accessed via GET
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("AdminLogin.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            sparepartsModel admin = sparePartsController.loginValidate(email, password);

            if (admin != null) {
                // Login successful
                HttpSession session = request.getSession();
                session.setAttribute("admin", admin);
                response.sendRedirect("H_AdminDashboard.jsp"); 
            } else {
                // Login failed
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("AdminLogin.jsp");
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Login failed due to server error.");
        }
    }
}