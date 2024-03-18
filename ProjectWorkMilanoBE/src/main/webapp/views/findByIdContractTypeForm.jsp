<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Contract Type by ID</title>
</head>
<body>
	<h2>Insert the Contract Type ID to get your results:</h2>
	
	<form action="${pageContext.request.contextPath}/ContractTypeCtr/findByIdContractType">
		<label for="idContractType">Contract Type ID:</label>
		<br>
		<input type="number" id="idContractType" name="idContractType">
		<br>
		<input type="submit" value="Find Contract Type">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>