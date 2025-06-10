package com.spareparts;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CreatePartsServlet")
public class CreatePartsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name= request.getParameter("name");
		String qty= request.getParameter("qty");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = hPartsController.insertdata(name , qty ,price , description);
		
		if (isTrue==true) {
			String alertMessage = "Data Insert Successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='getAllPartsServlet'</script>");	
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jps");
			dis2.forward(request, response);
		}
		
	}

}