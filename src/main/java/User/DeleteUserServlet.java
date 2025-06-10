package User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("id");
	
	boolean isTrue;
	
	isTrue = UserController.deletedata(id);
	if(isTrue == true) {
		String alertMessage = "Data Delete Successful";
		response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Register.jsp'</script>");
	}
	
	else {
		List<UserModel> userDetails = UserController.getById(id);
		request.setAttribute("userDetails", userDetails);
		
		RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		dis2.forward(request, response);
	}
	}

}
