<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by ID</title>

</head>
<body>

<h1>FIND COMPANY CLIENT</h1>
	
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClient">
		<label for="idCompanyClient"><strong>Find Company Client by ID:</strong></label>
		<br>
		<input type="number" id="idCompanyClient" name="idCompanyClient">
		<input type="hidden" id="searchType" name="searchType" value="byID">
		<br>
		<input type="submit" value="Find Company Client">
	</form>

</body>
</html>