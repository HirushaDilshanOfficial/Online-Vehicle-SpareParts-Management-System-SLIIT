<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parts Manage Section</title>
    <link rel="icon" href="Assets/icon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Link to external CSS -->
    <link rel="stylesheet" href="css/H_AdminManage.css">
    <!-- FontAwesome CDN -->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <script>
        function logout() {
            
            window.location.href = "logout"; 
        }
    </script>
</head>

<body class="bg-gray-100">

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
                    
                    <!-- Logout -->
                    <button onclick="logout()" class="bg-red-500 text-white px-4 py-2 rounded-full hover:bg-red-600">
				        <i class="fas fa-sign-out-alt"></i> Logout
				    </button>
                </div>
            </div>

            <!-- Content Area: Table -->
            <div class="content-area">
                <div class="header">
                    <h2 class="title"> Parts Records</h2>
                    <button onclick="window.location.href='H_CreateParts.jsp'" class="create-btn">
                        <i class="fas fa-plus mr-2"></i> Create New Record
                    </button>
                </div>
				
				<div class="relative mb-3">
    <!-- Search Input with FontAwesome icon inside the input field -->
    <input type="text" id="searchInput" class="form-control pl-10 pr-4 py-2 border rounded-lg w-full focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="Search...">
    <!-- Search Icon inside the input -->
    <i class="fas fa-search absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-600"></i>
</div>

				
                <!-- Table -->
                <div class="table-container">
                    <table class="table">
                        <thead class="table-header">
                            <tr>
                                <th class="table-cell">ID</th>
                                <th class="table-cell">Name</th>
                                <th class="table-cell">QTY</th>
                                <th class="table-cell">Price</th>
                                <th class="table-cell">Description</th>
                                <th class="table-cell">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="parts" items="${allparts}">
                                <tr class="table-row">
                                    <td class="table-cell">${parts.id}</td>
                                    <td class="table-cell">${parts.name}</td>
                                    <td class="table-cell">${parts.qty}</td>
                                    <td class="table-cell">${parts.price}</td>
                                    <td class="table-cell">${parts.description}</td>
                                    <td class="table-cell">
                                        <div class="btn-container">
                                            <a href="H_EditParts.jsp?id=${parts.id}&name=${parts.name}&QTY=${parts.qty}&Price=${parts.price}&description=${parts.description}" class="edit-btn">
                                                <i class="fas fa-edit"></i> Edit
                                            </a>
                                            <form action="partsDeleteServlet" method="POST" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this part?');">
											    <input type="hidden" name="id" value="${parts.id}">
											    <button type="submit" class="delete-btn">
											        <i class="fas fa-trash"></i> Delete
											    </button>
											</form>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        function filterTable() {
            var input, filter, table, tr, td, i, j, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.querySelector("table");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { 
                tr[i].style.display = "none"; 
                td = tr[i].getElementsByTagName("td");
                for (j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                            break; 
                        }
                    }
                }
            }
        }

        document.getElementById("searchInput").addEventListener("input", filterTable);
    </script>

</body>

</html>