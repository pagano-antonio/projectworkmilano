<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by Name</title>
</head>
<body>
	<h2>Insert the Company Client Name to get results:</h2>
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/findCompanyClientByName">
		<label for="name">Company Client Name:</label>
		<br>
		<input type="text" id="name" name="name">
		<br>
		<input type="submit" value="Find Company Client">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>