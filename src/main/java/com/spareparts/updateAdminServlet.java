package com.spareparts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateAdminServlet")
public class updateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String phonenumber= request.getParameter("phonenumber");
		//String password= request.getParameter("password");
		
		boolean isTrue;
		isTrue = sparePartsController.updateData(id, name, email, phonenumber); //password);
		
		if (isTrue==true) {
			List<sparepartsModel> admin = sparePartsController.getById(id);
			request.setAttribute("admin", admin);
			String alertMessage = "Data Update Successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='getAllAdminServlet'</script>");	
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("");
			dis2.forward(request, response);
		}
	}

}
