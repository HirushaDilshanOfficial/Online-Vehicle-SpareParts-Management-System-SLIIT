<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/form.css">
    <title>Stock Management</title>
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="styles.css">
    <link rel="icon" href="images/icon.jpg" type="image/x-icon">
</head>
<body>
    <!-- SIDEBAR -->
    <section id="sidebar">
        <a href="#" class="brand">
            <i class='bx bxs-store-alt'></i>
            <span class="text">Stock Manager</span>
        </a>
        <ul class="side-menu top">
            <li class="active">
                <a href="D_managerdashboard.jsp">
                    <i class='bx bxs-dashboard'></i>
                    <span class="text">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="form.jsp">
                    <i class='bx bxs-shopping-bag-alt'></i>
                    <span class="text">Add New Stock</span>
                </a>
            </li>
            <li>
                <a href="reports.jsp">
                    <i class='bx bxs-doughnut-chart'></i>
                    <span class="text">Reports</span>
                </a>
            </li>
        </ul>
    </section>

    <!-- CONTENT -->
    <section id="content">
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Stock Management</h1>
                    <ul class="breadcrumb">
                        <li><a href="#">Dashboard</a></li>
                        <li><i class='bx bx-chevron-right'></i></li>
                        <li><a class="active" href="#">Stock Table</a></li>
                    </ul>
                </div>
                <a href="form.jsp" class="btn-download">
                    <i class='bx bxs-plus-circle'></i>
                    <span class="text">Add New Stock</span>
                </a>
            </div>
            
            <div class="relative mb-3">
			    
			    <input type="text" id="searchInput" class="form-control pl-10 pr-4 py-2 border rounded-lg w-full focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="Search...">
			    <i class="fas fa-search absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-600"></i>
			</div>
			

            <div class="table-data">
                <div class="order">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="stockreports" items="${allStock}">
                                <tr>
                                    <td>${stockreports.id}</td>
                                    <td>${stockreports.p_name}</td>
                                    <td>${stockreports.qty}</td>
                                    <td>${stockreports.price}</td>
                                    <td class="action-buttons">
                                        <a href="update.jsp?id=${stockreports.id}&p_name=${stockreports.p_name}&qty=${stockreports.qty}&price=${stockreports.price}" class="btn-update">
                                            <i class='bx bxs-edit'></i>
                                            Update
                                        </a>
                                        <form action="deleteServlet" method="post" class="delete-form">
                                            <input type="hidden" name="id" value="${stockreports.id}" />
                                            <button class="btn-delete">
                                                <i class='bx bxs-trash'></i>
                                                Delete
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </section>
    
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