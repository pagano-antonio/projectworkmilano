<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by ID</title>
</head>
<body>
	<h2>Insert the Company Client ID to get your results:</h2>
	
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClient">
		<label for="idCompanyClient">Company Client ID:</label>
		<br>
		<input type="number" id="idCompanyClient" name="idCompanyClient">
		<br>
		<input type="submit" value="Find Company Client">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>