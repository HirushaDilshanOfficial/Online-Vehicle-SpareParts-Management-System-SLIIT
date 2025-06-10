<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/N_login.css">
<link rel="icon" href="User/Assets/MB.jpg" type="image/x-icon">
</head>
<body>
<h1>User Login</h1>

<form action="LoginServlet" method="post">
		<table>
			
			<tr>
				<td>Email Address:</td>
				<td><input type="email" name="email" required></td>
			</tr>
			
			<tr>
				<td colspan = "2"><input type = "submit" value="submit"></td>
			</tr>
		</table>
		</form>

</body>
</html>