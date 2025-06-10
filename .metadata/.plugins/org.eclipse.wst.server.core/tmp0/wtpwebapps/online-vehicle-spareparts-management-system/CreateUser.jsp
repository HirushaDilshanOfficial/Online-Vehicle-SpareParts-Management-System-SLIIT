<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New User Record</title>
    <link rel="stylesheet" href="css/H_CreateAdmin.css">
    <link rel="icon" href="Assets/icon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- FontAwesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <script>
        function logout() {
            
            window.location.href = "logout"; 
        }
        
        
        
        function logout() {
            window.location.href = "logout"; 
        }

        
        function validateForm(event) {
            event.preventDefault(); // Prevent default form submission
            
            const passwordInput = document.getElementById("password");
            const passwordError = document.getElementById("passwordError");
            const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;
            
            passwordError.textContent = "";
            
            if (!passwordPattern.test(passwordInput.value)) {
                passwordError.textContent = "Password must be at least 8 characters long, include 1 uppercase, 1 lowercase, 1 number, and 1 special character (e.g., !@#$%^&*)";
                passwordInput.focus();
                return false;
            }
            
            document.querySelector("form").submit();
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
				    <a href="<%=request.getContextPath()%>/logout" class="bg-red-500 text-white px-4 py-2 rounded-full hover:bg-red-600">
				        <i class="fas fa-sign-out-alt"></i> Logout
				    </a>
				</div>
            </div>

            <!-- Form with styling -->
            <div class="form-container">
                <form action="createUserServlet" method="POST" class="form">

                    <div class="grid-container">
                        <div class="input-group">
                            <label for="name">Full Name</label>
                            <input type="text" id="name" name="name" required>
                        </div>

                    

                        <div class="input-group">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" name="email" required>
                        </div>

                        <div class="input-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" id="phone" name="phonenumber" required>
                        </div>

                        

                        <div class="input-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" 
                                   pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}"
                                   title="Password must be at least 8 characters long, include 1 uppercase, 1 lowercase, 1 number, and 1 special character (e.g., !@#$%^&*)"
                                   required>
                            <span id="passwordError" style="color: red; font-size: 0.9em;"></span>
                        </div>
                     </div>
                        <c:if test="${not empty errorMessage}">
						    <p style="color: red;">${errorMessage}</p>
						</c:if>

                        

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