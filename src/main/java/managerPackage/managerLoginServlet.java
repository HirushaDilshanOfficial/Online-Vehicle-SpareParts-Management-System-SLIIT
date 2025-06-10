package managerPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/managerLoginServlet")
public class managerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Optional: Forward to login page if accessed via GET
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("ManagerLogin.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            managerModel supplier = control.loginValidate(email, password);

            if (supplier!= null) {
                // Login successful
                HttpSession session = request.getSession();
                session.setAttribute("admin", supplier);
                response.sendRedirect("GetAllStock"); 
            } else {
                // Login failed
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("SupplierLogin.jsp");
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Login failed due to server error.");
        }
    }
}