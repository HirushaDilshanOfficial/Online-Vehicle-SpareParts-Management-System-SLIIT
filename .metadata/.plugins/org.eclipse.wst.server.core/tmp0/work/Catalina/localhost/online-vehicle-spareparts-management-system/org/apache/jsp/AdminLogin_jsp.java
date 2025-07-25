/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.104
 * Generated at: 2025-06-09 07:32:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Admin Login</title>\n");
      out.write("    <link rel=\"icon\" href=\"Assets/icon.png\" type=\"image/x-icon\">\n");
      out.write("    <script src=\"https://cdn.tailwindcss.com\"></script>\n");
      out.write("    <!-- Link to external CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/AdminLogin.css\">\n");
      out.write("    <!-- FontAwesome CDN for Icons (Optional) -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\n");
      out.write("    \n");
      out.write("    <style>\n");
      out.write("        .error-message {\n");
      out.write("            background-color: #f35555; \n");
      out.write("            border: 1px solid #dc2626; \n");
      out.write("            border-radius: 0.375rem; \n");
      out.write("            padding: 0.75rem 1rem; \n");
      out.write("            color: #fbf5f5; \n");
      out.write("            display: flex;\n");
      out.write("            align-items: center;\n");
      out.write("            gap: 0.5rem; \n");
      out.write("            transition: opacity 0.5s ease-in-out;\n");
      out.write("        }\n");
      out.write("        .error-message i {\n");
      out.write("            font-size: 1.1rem; \n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"bg-gray-100\">\n");
      out.write("\n");
      out.write("    <!-- Centered Login Form Container -->\n");
      out.write("    <div class=\"min-h-screen flex items-center justify-center\">\n");
      out.write("        <div class=\"login-container\">\n");
      out.write("            <!-- Logo Section Above Login Form -->\n");
      out.write("            <div class=\"logo-section text-center mb-6\">\n");
      out.write("                <img src=\"Assets/Logo.jpg\" alt=\"MotorBay Logo\" class=\"logo-image\">\n");
      out.write("                <h2 class=\"login-title\">Admin Login</h2>\n");
      out.write("                <p class=\"login-subtitle\">Please login with your admin credentials.</p>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("             \n");
      out.write("	                    ");
 if (request.getAttribute("errorMessage") != null) { 
      out.write("\n");
      out.write("			                <div id=\"errorMessage\" class=\"error-message text-center mb-4\">\n");
      out.write("			                    <i class=\"fas fa-exclamation-circle\"></i>\n");
      out.write("			                    ");
      out.print( request.getAttribute("errorMessage") );
      out.write("\n");
      out.write("			                </div>\n");
      out.write("			            ");
 } 
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <!-- Login Form -->\n");
      out.write("            <form action=\"LoginServlet\" method=\"POST\">\n");
      out.write("                <div class=\"space-y-4\">\n");
      out.write("                    <!-- Username Field -->\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <label for=\"username\" class=\"label\">Email</label>\n");
      out.write("                        <input type=\"text\" id=\"username\" name=\"email\" class=\"input-field\" required>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Password Field -->\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <label for=\"password\" class=\"label\">Password</label>\n");
      out.write("                        <input type=\"password\" id=\"password\" name=\"password\" class=\"input-field\" required>\n");
      out.write("                    </div>\n");
      out.write("                   \n");
      out.write("                    <!-- Forgot Password Link (Optional) -->\n");
      out.write("                    <div class=\"flex justify-end\">\n");
      out.write("                        <a href=\"#\" class=\"forgot-password-link\">Forgot Password?</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Login Button -->\n");
      out.write("                    <div class=\"mt-6\">\n");
      out.write("                        <button type=\"submit\" class=\"login-button\">\n");
      out.write("                            Login\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("<script>\n");
      out.write("        // Auto-hide error message after 5 seconds\n");
      out.write("        document.addEventListener('DOMContentLoaded', function() {\n");
      out.write("            const errorMessage = document.getElementById('errorMessage');\n");
      out.write("            if (errorMessage) {\n");
      out.write("                setTimeout(() => {\n");
      out.write("                    errorMessage.style.opacity = '0';\n");
      out.write("                    setTimeout(() => {\n");
      out.write("                        errorMessage.style.display = 'none';\n");
      out.write("                    }, 500); // Wait for fade-out transition to complete\n");
      out.write("                }, 2000); \n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
