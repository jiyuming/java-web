<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<div padding: 5px>
		<h2>Login Page</h2>
		<form action="LoginController" method="post">
			<div padding: 16px>
				<lable> Enter username : </lable>
				<input type="text" name="username" required> <BR><BR>
				<lable> Enter password : </lable>
				<input type="password" name="password" required> <BR> <BR>
				<input type="submit" value="Login" />
			</div>
		</form>
	</div>

	<br>
	<a href="register.jsp">Create a Account</a>
</body>
</html>