<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Candidate by Surname</title>
</head>
<body>
	<h2>Find Candidate by Surname:</h2>
	
	<form action="${pageContext.request.contextPath}/candidate/findCandidateBySurname">
		<label for="surname">Insert Surname:</label>
		<br>
		<input type="text" id="surname" name="surname">
		<br>
		<input type="submit" value="Find Candidate">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>