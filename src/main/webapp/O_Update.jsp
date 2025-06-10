<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <li><a href="#"> <i class='bx bxs-chart icon' ></i> Reports and Analytics</a></li>
			<li><a href="#"><i class='bx bxs-widget icon' ></i> Account and Security</a></li>
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
 <% 
   String OrderID =request.getParameter("OrderID");
   String Date =request.getParameter("Date");
   String Details =request.getParameter("Details");
   String Cost =request.getParameter("Cost");
   String Status =request.getParameter("Status");
 
 %>
 
 <form action="O_UpdateServlet" id="updateOrderForm" class="order-form" method="post">
                            <div class="form-row">
                            
                            <div class="form-group">
                        <label for="orderId">Order ID</label>
                        <input type="text" id="orderId" name="OrderID" value="<%=OrderID%>"  readonly>
                    </div>
                                
                                <div class="form-group">
                                    <label for="orderDate">Order Date</label>
                                    <input type="date" id="Date" name="Date" value="<%=Date%>"required>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="orderDetails">Order Details</label>
                               <textarea id="Details" name="Details" rows="4" required><%=Details%></textarea>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="orderCost">Cost</label>
                                    <input type="number" id="Cost" name="Cost" step="0.01" value="<%=Cost%>" required>
                                </div>
                                <div class="form-group">
                                    <label for="orderStatus">Status</label>
                                    <select id="Status" name="Status" required>
									    <option value="">Select Status</option>
									    <option value="pending" <%= "pending".equals(Status) ? "selected" : "" %>>Pending</option>
									    <option value="completed" <%= "completed".equals(Status) ? "selected" : "" %>>Completed</option>
									    <option value="rejected" <%= "rejected".equals(Status) ? "selected" : "" %>>Rejected</option>
									</select>
                                </div>
                            </div>
                            
                            <div class="form-actions">
                                <button type="submit" class="btn-submit">Update</button>
                                
                            </div>
                            
                            
                        </form>
                        
                        </main>
                        
                        
<script src="JS/A_dash.js"></script>

</div>
</body>
</html>