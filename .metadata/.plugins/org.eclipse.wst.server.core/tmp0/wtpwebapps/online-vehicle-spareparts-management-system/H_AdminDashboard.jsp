<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.spareparts.sparepartsModel" %>
<%
sparepartsModel admin = (sparepartsModel) session.getAttribute("admin");

    if (admin == null) {
        response.sendRedirect("AdminLogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Link to external CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="icon" href="Assets/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="css/H_AdminDashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <script>
        function logout() {
            
            window.location.href = "logout"; 
        }
    </script>
</head>

<body class="bg-gradient">

    <!-- Side Navigation -->
    <div class="flex-container">
        <div class="sidebar">
            <div class="sidebar-header">
                <i class="fas fa-user-cog"></i>
                <span>Admin Panel</span>
            </div>
            <ul class="sidebar-links">
                <li>
                    <a href="H_AdminDashboard.jsp">
                        <i class="fas fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="H_ManageUser.jsp">
                        <i class="fas fa-users"></i>
                        <span>Users</span>
                    </a>
                </li>
                <li>
                    <a href="getAllPartsServlet">
                        <i class="fas fa-cogs"></i>
                        <span>Spare Parts</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- Main Content Area -->
        <div class="main-content">
            <!-- Top Bar -->
            <div class="bg-white shadow-md px-6 py-4 flex justify-between items-center">
                <div class="flex items-center space-x-4">
                    <span class="font-semibold text-xl">Admin Dashboard</span>
                </div>
                <div class="flex items-center space-x-4">
                    <!-- Admin Profile Picture and Name -->
                    <div class="flex items-center space-x-3">
                        
                        <span class="text-gray-700 font-medium"><%=admin.getName() %></span>
                    </div>
                    <button onclick="logout()" class="bg-red-500 text-white px-4 py-2 rounded-full hover:bg-red-600">
				        <i class="fas fa-sign-out-alt"></i> Logout
				    </button>
                </div>
            </div>

            <!-- Welcome Section -->
            <div class="welcome-section">
                <div class="welcome-box">
                    <div class="decorative-element top-right"></div>
                    <div class="decorative-element bottom-left"></div>
                    <div class="content">
                        <div class="icon-container">
                            <i class="fas fa-hand-sparkles"></i>
                        </div>
                        <h1 class="welcome-text">Welcome, <%=admin.getName() %>!</h1>
                        <div class="divider"></div>
                        <p class="welcome-message">We're delighted to have you back. Your dashboard is ready for you to
                            manage and monitor your system with ease.</p>
                        <div class="date-display">
                            <span class="date-text">Today is </span>
                            <span id="currentDate" class="date-value"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Script for displaying the current date -->
    <script>
        document.getElementById('currentDate').textContent = new Date().toLocaleDateString('en-US', {
            weekday: 'long',
            year: 'numeric',
            month: 'long',
            day: 'numeric'
        });
    </script>
</body>

</html>