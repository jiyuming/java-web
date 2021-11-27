<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Error Page</title>
</head>
<body>
	<%
		if (response.getStatus() == 500) {
	%>
	<font color="red">Error: <%=exception.getMessage()%></font>
	<br>

	<%-- include login page --%>
	<%@ include file="login.jsp"%>
	<%
		} else {
	%>
	Hi There, error code is
	<%=response.getStatus()%><br> Please go to
	<a href="/login.jsp">home page</a>
	<%
		}
	%>
</body>
</html>