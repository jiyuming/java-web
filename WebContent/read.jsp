<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read</title>
<%
	String table = (String) request.getAttribute("table");
String info = (String) request.getAttribute("info");
String link = (String) request.getAttribute("link");
String label = (String) request.getAttribute("label");
%>
</head>
<body>
	<h2>
		<%=info%>
	</h2>
	<%=table%>
	<br>
	<a href="<%=link%>"> <%=label%>
	</a>

</body>
</html>