<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/N_UpdateProfile.css">
<link rel="icon" href="Assets/MB.jpg" type="image/x-icon">
</head>
<body>

	<%
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
	%>
	
	<form action="UpdateProfileServlet" method="post">
		<table>
		
			<tr>
				<td>ID:</td>
				<td><input type="text" id="id" name="id" value="<%=id%>" readonly></td>
			</tr>
			
			<tr>
				<td>First Name:</td>
				<td><input type="text" id="firstname" name="firstname" value="<%=firstname%>" required></td>
			</tr>
			
			<tr>
				<td>Last Name:</td>
				<td><input type="text" id="lastname" name="lastname" value="<%=lastname%>" required></td>
			</tr>
			
			<tr>
				<td>Email Address:</td>
				<td><input type="text" id="email" name="email" value="<%=email%>"required></td>
			</tr>
			
			<tr>
				<td>Address:</td>
				<td><input type="text" id="address" name="address" value="<%=address%>"required></td>
			</tr>
			
			<tr>
				<td colspan = "2"><input type = "submit" value="submit"></td>
			</tr>
		</table>
		</form>

</body>
</html>