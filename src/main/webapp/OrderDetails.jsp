<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/A_dash.css">
    <link rel="stylesheet" href="css/Order.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
        <section id="sidebar">
            <a href="#" class="brand"><i class='bx bxs-smile icon'></i>Supplier Dashboard</a>
            <ul class="side-menu">
                <li><a href="#" class="active"><i class='bx bxs-dashboard icon' ></i> Dashboard</a></li>
                <li class="divider" data-text="main">Main</li>
                <li>
                    <a href="#"><i class='bx bxs-inbox icon' ></i> Elements <i class='bx bx-chevron-right icon-right' ></i></a>
                    <ul class="side-dropdown">
                        <li><a href="#">Alert</a></li>
                        <li><a href="#">Product Management</a></li>
                        <li><a href="#">Payments</a></li>
                    </ul>
                </li>
                
                <li><a href="O_Insert.jsp" onclick="navigateToOrders(event)"><i class='bx bxs-chart icon' ></i> Orders</a></li>
                <li><a href="#"> <i class='bx bxs-chart icon' ></i> Reports & Analytics</a></li>
			<li><a href="#"><i class='bx bxs-widget icon' ></i> Account & Security</a></li>
			<li class="divider" data-text="table and forms">Table and forms</li>
			<li><a href="#"><i class='bx bx-table icon' ></i> Tables</a></li>
			<li>
				<a href="#"><i class='bx bxs-notepad icon' ></i> Forms <i class='bx bx-chevron-right icon-right' ></i></a>
				<ul class="side-dropdown">
					<li><a href="#">Request forms</a></li>
					<li><a href="#">Rejections</a></li>
					
				</ul>
			</li>
		</ul>
        <div class="ads">
			<div class="wrapper">
				<a href="#" class="btn-upgrade">Upgrade</a>
				<p>Become a <span>PRO</span> member and enjoy <span>All Features</span></p>
			</div>
		</div>
	</section>
    <section id="headerbar">
        <nav>
			<i class='bx bx-menu toggle-sidebar' ></i>
			
			<a href="#" class="nav-link">
				<i class='bx bxs-bell icon' ></i>
				<span class="badge">5</span>
			</a>
			<a href="#" class="nav-link">
				<i class='bx bxs-message-square-dots icon' ></i>
				<span class="badge">8</span>
			</a>
			<span class="divider"></span>
			<div class="profile">
				<img src="Assets/Profile.jpeg">
				<ul class="profile-link">
					<li><a href="#"><i class='bx bxs-user-circle icon' ></i> Profile</a></li>
					<li><a href="#"><i class='bx bxs-cog' ></i> Settings</a></li>
					<li><a href="#"><i class='bx bxs-log-out-circle' ></i> Logout</a></li>
				</ul>
			</div>
		</nav>
    </section>
    
    
    
    <main>
            <h1 class="title">Orders Management</h1>
            <ul class="details">
                <li><a href="dash.html">Home</a></li>
                <li class="divider">/</li>
                <li><a href="#" class="active">Orders</a></li>
                
            
            </ul>
            
            <div class="relative mb-3">
			    <!-- Search Input -->
			    <input type="text" id="searchInput" class="form-control pl-10 pr-4 py-2 border rounded-lg w-full focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="Search...">
			 
			    <i class="fas fa-search absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-600"></i>
			</div>
 <table class="order-table">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            
                            <th>Date</th>
                            <th>Details</th>
                            <th>Cost</th>
                            <th>Status</th>
                            <th>Actions</th>
                           
                        </tr>
                    </thead>
                    <tbody>
                   <c:forEach var="Orders" items="${allOrders}">
         <tr>
             <td>${Orders.orderID}</td> 
             <td>${Orders.date}</td>   
             <td>${Orders.details}</td> 
             <td>${Orders.cost}</td>   
             <td>${Orders.status}</td> 
             <td> 
             <a href="O_Update.jsp?OrderID=${Orders.orderID}&Date=${Orders.date}&Details=${Orders.details}&Cost=${Orders.cost}&Status=${Orders.status}">
             <button>Update</button>
             </a>
             
             <form action="O_DeleteServlet" method="post">
             <input type="hidden" name="OrderID" value="${Orders.orderID}"/>
             <button>Delete</button>
             </form>
             </td>
             
             
         </tr>
         
         
     </c:forEach>
                    </tbody>
                </table>
</main>
<script src="JS/A_dash.js"></script>

<script>
function filterTable() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) { // Start from 1 to skip header row
        tr[i].style.display = "none"; // Hide row by default
        td = tr[i].getElementsByTagName("td")[0]; // Get first column (orderID)
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = ""; // Show row if match found
            }
        }
    }
}

document.getElementById("searchInput").addEventListener("input", filterTable);
    </script>
</div>
</body>
</html>