<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Education by ID</title>
</head>
<body>
	<h2>Insert the Education ID to get your results:</h2>
	
	<form action="${pageContext.request.contextPath}/EducationCtr/findByIdEducation">
		<label for="idEducation">Education ID:</label>
		<br>
		<input type="number" id="idEducation" name="idEducation">
		<br>
		<input type="submit" value="Find Education">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>