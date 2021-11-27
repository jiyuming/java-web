<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a product</title>
</head>
<body>
	<form method="post" action="AddAdminProduct">
		<input type="hidden" name="submitted" value="true">

		<table border="0" cellspacing="2" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Add a new Product</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><label>Product Name</label></td>
					<td><input type="text" name="name" required /></td>
				</tr>
				<tr>
					<td><label>Color</label></td>
					<td><input type="text" name="color" required /></td>
				</tr>
				<tr>
					<td><label>Manufacturer</label></td>
					<td><input type="text" name="manuf" required /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add a Product" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<br>
	<a href="ReadAdminProduct">View All Available Products</a>

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