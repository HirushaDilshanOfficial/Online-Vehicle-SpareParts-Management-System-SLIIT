<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/N_UserDetails.css">
<link rel="icon" href="User/Assets/MB.jpg" type="image/x-icon">
</head>
<body>

	<h1>User Profile</h1>
	<h2>ID: <span>${user.id}</span></h2>
    <h2>First Name: <span>${user.firstname}</span></h2>
	<h2>Last Name: <span>${user.lastname}</span></h2>
	<h2>Email: <span>${user.email}</span></h2>
	<h2>Address: <span>${user.address}</span></h2>
	
	<a href="UpdateProfile.jsp?id=${user.id}&firstname=${user.firstname}&lastname=${user.lastname}&email=${user.email}&address=${user.address}">
		<button>Update</button>
	</a>
	
	<form action="DeleteUserServlet" method="post">
		<input type="hidden" name="id" value="${user.id}"/>
		<button>Delete</button>
		</form>
	
</body>
</html>
		

	
	

