<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supplier Login</title>
    <link rel="icon" href="Assets/icon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Link to external CSS -->
    <link rel="stylesheet" href="css/AdminLogin.css">
    <!-- FontAwesome CDN for Icons (Optional) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        .error-message {
            background-color: #f35555; 
            border: 1px solid #dc2626; 
            border-radius: 0.375rem; 
            padding: 0.75rem 1rem; 
            color: #fbf5f5; 
            display: flex;
            align-items: center;
            gap: 0.5rem; 
            transition: opacity 0.5s ease-in-out;
        }
        .error-message i {
            font-size: 1.1rem; 
        }
    </style>
</head>

<body class="bg-gray-100">

    <!-- Centered Login Form Container -->
    <div class="min-h-screen flex items-center justify-center">
        <div class="login-container">
            <!-- Logo Section Above Login Form -->
            <div class="logo-section text-center mb-6">
                <img src="Assets/Logo.jpg" alt="MotorBay Logo" class="logo-image">
                <h2 class="login-title">Supplier Login</h2>
                <p class="login-subtitle">Please login with your Supplier credentials.</p>
            </div>
            
             
	                    <% if (request.getAttribute("errorMessage") != null) { %>
			                <div id="errorMessage" class="error-message text-center mb-4">
			                    <i class="fas fa-exclamation-circle"></i>
			                    <%= request.getAttribute("errorMessage") %>
			                </div>
			            <% } %>
            

            <!-- Login Form -->
            <form action="SupplierLoginServlet" method="POST">
                <div class="space-y-4">
                    <!-- Username Field -->
                    <div class="input-group">
                        <label for="username" class="label">Email</label>
                        <input type="text" id="username" name="email" class="input-field" required>
                    </div>

                    <!-- Password Field -->
                    <div class="input-group">
                        <label for="password" class="label">Password</label>
                        <input type="password" id="password" name="password" class="input-field" required>
                    </div>
                   
                    <!-- Forgot Password Link (Optional) -->
                    <div class="flex justify-end">
                        <a href="#" class="forgot-password-link">Forgot Password?</a>
                    </div>

                    <!-- Login Button -->
                    <div class="mt-6">
                        <button type="submit" class="login-button">
                            Login
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
<script>
        // Auto-hide error message after 5 seconds
        document.addEventListener('DOMContentLoaded', function() {
            const errorMessage = document.getElementById('errorMessage');
            if (errorMessage) {
                setTimeout(() => {
                    errorMessage.style.opacity = '0';
                    setTimeout(() => {
                        errorMessage.style.display = 'none';
                    }, 500); 
                }, 2000); 
            }
        });
    </script>
</body>

</html>
