package User;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		try {
			
			List<UserModel> userlogin = UserController.loginValidate(email);
			if(userlogin != null && !userlogin.isEmpty()) {
				
				// Get the first user (assuming only one user per email)
                UserModel user = userlogin.get(0);

                // Store user in session
                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                // Redirect to profileServlet to load profile page
                response.sendRedirect("profileServlet");
			}
			else {
				String alertMessage = "Invalid Credentials, Please try again";
				response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='login.jsp'</script>");
			}
				
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
