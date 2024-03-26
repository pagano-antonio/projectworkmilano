<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Id Work experience</title>
</head>
<body>
	<h1>Find by Id Work Experience</h1>

<form action="${pageContext.request.contextPath}/wk/findByIdWorkExperience" method="get">
	
		<label for="idWorkExperience">ID WORK EXPERIENCE:</label>
		<br>
		<input type="number" id="idWorkExperience" name="idWorkExperience">
		<br>
		<br>
	
		<input type="submit" value="Invia">
	</form>
</body>
</html>