<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Company Client Form</title>
</head>
<body>

	<h2>Add Company Client:</h2>
	
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/addCompanyClient" method="POST">
	<label for="name">Company name:</label>
	<br>
	<input type="text" id="name" name="name">
	<br>
	<label for="city">Company city:</label>
	<br>
	<input type="text" id="city" name="city">
	<br>
	<label for="address">Company address:</label>
	<br>
	<input type="text" id="address" name="address">
	<br>
	<input type="submit" value="Add Company Client">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>