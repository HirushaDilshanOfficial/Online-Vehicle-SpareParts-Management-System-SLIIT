package com.spareparts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminDeleteServlet")
public class adminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue = sparePartsController.deletedata(id);
		
		if(isTrue == true) {
			String alertMessage = "Data Delete Successfully";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='getAllAdminServlet';</script>");
			
		}
		else {
		List<sparepartsModel> sparepartsdetails = sparePartsController.getById(id);
		request.setAttribute("sparepartsdetails", sparepartsdetails);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("Wrong.jsp");
		dispacher.forward(request, response);
		
		
	}

}
}
