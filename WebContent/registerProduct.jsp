<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add</title>
</head>
<body>
	<form method="post" action="RegisterProduct">
		<input type="hidden" name="submitted" value="true">
		<input type="hidden" name="productid" value="${param.id}">

		<table border="0" cellspacing="2" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Register a new product</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><label>Product ID</label><c:out value="${param.id}" /></td>
				</tr>
				<tr>
					<td><label>Username</label></td>
					<td><input type="text" name="username" required /></td>
				</tr>
				<tr>
					<td><label>Serial No.</label></td>
					<td><input type="text" name="serialno" required /></td>
				</tr>
				<tr>
					<td><label>Purchase Date</label></td>
					<td><input type="text" name="purchasedate" placeholder="20200101"
						required /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Regisger" /></td>
					<td><input type="reset" value="reset" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<br>
	<a href="UserLogin">View All Registered Products</a>

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