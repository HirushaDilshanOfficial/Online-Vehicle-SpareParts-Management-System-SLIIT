<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="css/N_Register.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
<link rel="icon" href="User/Assets/MB.jpg" type="image/x-icon">
</head>
<body>
<h2>User Registration</h2>
	<form action="UserInsertServlet" method="post">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstname" required></td>
			</tr>
			
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastname" required></td>
			</tr>
			
			<tr>
				<td>Email Address:</td>
				<td><input type="email" name="email" required></td>
			</tr>
			
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address" required></td>
			</tr>
			
			<tr>
				<td colspan = "2"><input type = "submit" value="submit"></td>
			</tr>
		</table>
		</form>
			
</body>
</html>