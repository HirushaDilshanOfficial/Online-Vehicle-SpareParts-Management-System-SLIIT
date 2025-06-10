<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Parts Record</title>
    <link rel="icon" href="Assets/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="css/H_CreateAdmin.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- FontAwesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	
	<script>
        function logout() {
            
            window.location.href = "logout"; 
        }
    </script>
    
</head>

<body class="bg-gray-50">
    <div class="flex-container">
        <!-- Side Navigation -->
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
                
                    <!-- Logout -->
                    
                    <button onclick="logout()" class="bg-red-500 text-white px-4 py-2 rounded-full hover:bg-red-600">
				        <i class="fas fa-sign-out-alt"></i> Logout
				    </button>
                </div>
            </div>
            
            <%
            	String id = request.getParameter("id");
	            String name = request.getParameter("name");
	            String qty = request.getParameter("QTY");
	            String price = request.getParameter("Price");
	            String description = request.getParameter("description");
            %>
            <!-- Form with styling -->
            <div class="form-container">
                <form action="updatePartsServlet" method="POST" class="form">
                    <div class="grid-container">
                    
                    
                    	<div class="input-group">
                            <label for="id">ID</label>
                            <input type="text" id="id" name="id" value="<%=id%>"readonly>
                        </div>
                        
                        <div class="input-group">
                            <label for="name">NAME</label>
                            <input type="text" id="name" name="name" value="<%=name%>"required>
                        </div>

                        <div class="input-group">
                            <label for="email">QTY</label>
                            <input type="text" id="qty" name="qty" value="<%=qty%>" required>
                        </div>

                        <div class="input-group">
                            <label for="phone">PRICE</label>
                            <input type="text" id="price" name="price" value="<%=price%>" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="phone">DESCRIPTION</label>
                            <input type="text" id="description" name="description" value="<%=description%>" required>
                        </div>

                        

    				</div>

                    <div class="form-footer">
                        <button type="submit" class="save-btn">
                            <i class="fas fa-save"></i>
                            <span>Save Record</span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>