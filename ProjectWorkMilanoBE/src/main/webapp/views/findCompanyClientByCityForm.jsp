<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by City</title>
</head>
<body>
	<h2>Insert the City you are interested in:</h2>
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/findCompanyClientByCity">
		<label for="city">Company Client City:</label>
		<input type="text" id="city" name="city">
		<input type="submit" value="Find Company Client">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>