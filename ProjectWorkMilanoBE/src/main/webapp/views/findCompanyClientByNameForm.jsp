<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by Name</title>

</head>
<body>
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/findCompanyClientByName">
		<label for="name"><strong>Find Company Client by Name:</strong></label>
		<br>
		<input type="text" id="name" name="name">
		<input type="hidden" id="searchType" name="searchType" value="byName">
		<br>
		<input type="submit" value="Find Company Client">
	</form>
</body>
</html>