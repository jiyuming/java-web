<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Claim Status</title>
</head>
<body>
	<form method="post" action="UpdateAdminClaim">
		<input type="hidden" name="submitted" value="true"> <input
			type="hidden" name="id" value="${param.id}">

		<h4 colspan="2">Update a Claim</h4>
		<label>Claim No.</label>
		<c:out value="${param.id}" />
		<br> <br> <label>Change Status to: </label><select
			name="cstatus">
			<option value="Submitted">Submitted</option>
			<option value="Approved">Approved</option>
			<option value="Rejected">Rejected</option>
		</select><br> <br><input type="submit" value="Update" />
	</form>	
	<br>
	<a href="ReadAdminClaims">Go Back</a>

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