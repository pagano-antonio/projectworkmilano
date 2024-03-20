<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Candidate by Phone</title>
</head>
<body>
	<h2>Find Candidate by Phone:</h2>
	
	<form action="${pageContext.request.contextPath}/candidate/findCandidateByPhone">
		<label for="phone">Insert Phone Number:</label>
		<br>
		<input type="number" id="phone" name="phone">
		<br>
		<input type="submit" value="Find Candidate">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>