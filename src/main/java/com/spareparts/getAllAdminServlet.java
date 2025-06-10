package com.spareparts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getAllAdminServlet")
public class getAllAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List <sparepartsModel> alladmins = sparePartsController.getAlladmin();
	request.setAttribute("alladmin", alladmins);
	
	String page = request.getParameter("page");
    String targetPage;

        if ("admin".equalsIgnoreCase(page)) {
        targetPage = "AdminManage.jsp";
    } else {
       
        targetPage = "H_AdminManage.jsp";
    }
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
	
	dispatcher.forward(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);
	
}

}





       
    
    
	
