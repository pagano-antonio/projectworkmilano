<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by City</title>

</head>
<body>
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/findCompanyClientByCity">
		<label for="city"><strong>Find Company Client by City:</strong></label>
		<br>
		<input type="text" id="city" name="city">
		<br>
		<input type="submit" value="Find Company Client">
	</form>
</body>
</html>