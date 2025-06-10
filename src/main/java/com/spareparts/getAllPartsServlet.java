package com.spareparts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getAllPartsServlet")
public class getAllPartsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List <partsModel> allparts = hPartsController.getAllparts();
	request.setAttribute("allparts", allparts);
	
	String page = request.getParameter("page");
    String targetPage;

        if ("admin".equalsIgnoreCase(page)) {
        targetPage = "displayParts.jsp";
    } else {
       
        targetPage = "H_displayParts.jsp";
    }
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
	
	dispatcher.forward(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);
	
}
}