package User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserInsertServlet")
public class UserInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	boolean isTrue; 
	
	isTrue = UserController.insertdata(firstname, lastname, email, address);
	
	if (isTrue == true) {
		
		String alertMessage = "Register Successful";
		response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='login.jsp'</script>");
		
	} else {
		RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		dis2.forward(request, response);
	}
}
	
	}




