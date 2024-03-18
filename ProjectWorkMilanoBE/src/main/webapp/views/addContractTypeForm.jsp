<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contract Type Form</title>
</head>
<body>
	<h2>Add Contract Type:</h2>
	
	<form action="${pageContext.request.contextPath}/ContractTypeCtr/addContractType" method="POST">
	<label for="title">Insert Contract Title:</label>
	<br>
	<input type="text" id="title" name="title">
	<br>
	<label for="description" id="description" name="description">Insert Contract Type Description:</label>
	<br>
	<input type="text" id="description" name="description">
	<br>
	<input type="submit" value="Add Contract Type">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>