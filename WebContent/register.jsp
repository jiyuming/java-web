<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<div padding: 5px>
		<h2>Register a new account</h2>
		<form action="RegisterController" method="post">
			<div padding: 16px>
				<lable> Username : </lable>
				<input type="text" name="username" required> <BR> <BR>
				<BR>
				<lable> Password : </lable>
				<input type="password" name="password" required> <BR> <BR>
				<lable> Phone No : </lable>
				<input type="text" name="phone" required> <BR> <BR>
				<lable> Email : </lable>
				<input type="text" name="email" required> <BR> <BR>
				<lable> Name/Address : </lable>
				<input type="text" name="nameaddress" required> <BR> <BR>
				<input type="submit" value="Register" />
			</div>
		</form>
	</div>

	<br>
	<a href="login.jsp">Login</a>
	<br>

	<font color="red"><c:if test="${not empty param.errMsg}">
			<c:out value="${param.errMsg}" />
			<a href="index.jsp">Go Back</a>
		</c:if></font>
	<font color="green"><c:if test="${not empty param.susMsg}">
			<c:out value="${param.susMsg}" />
			<a href="index.jsp">Go Back</a>
		</c:if></font>
	<br>
</body>
</html>