<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Claim</title>
</head>
<body>
	<form method="post" action="AddClaim">
		<input type="hidden" name="submitted" value="true"> <input
			type="hidden" name="rpid" value="${param.id}">

		<table border="0" cellspacing="2" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Submit a Claim</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><label>Date of Claim</label></td>
					<%
						java.text.DateFormat df = new java.text.SimpleDateFormat("yyyyMMdd");
					%>
					<td><%=df.format(new java.util.Date())%>
					</td>

				</tr>
				<tr>
					<td><label>Claim Description</label></td>
					<td><textarea name="desc" rows="4" cols="35" required></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<br>
	<a href="UserLogin">Go Back</a>

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