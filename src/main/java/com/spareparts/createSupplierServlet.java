package com.spareparts;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/createSupplierServlet")
public class createSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String phonenumber= request.getParameter("phonenumber");
		String password= request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = hSupplierController.insertdata(name , email ,phonenumber , password);
		
		if (isTrue==true) {
			String alertMessage = "Data Insert Successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='getAllSupplierServlet?page=supplier'</script>");	
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jps");
			dis2.forward(request, response);
		}
		
	}

}