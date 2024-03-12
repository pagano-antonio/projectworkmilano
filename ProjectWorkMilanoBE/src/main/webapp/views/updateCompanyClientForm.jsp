<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.CompanyClient"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Company Client Data</title>
</head>
<body>
	<h2>Update Company Client Data:</h2>
	
	<%CompanyClient client = (CompanyClient) request.getAttribute("idCompanyClient");%>
	
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/updateCompanyClient" method="POST">
		<label for="idCompanyClient">Company Client ID:</label>
		<br>
		<input readonly type="number" id="idCompanyClient" name="idCompanyClient" value="<%=client.getIdCompanyClient()%>">
		<br>
		<label for="name">Company Client Name:</label>
		<br>
		<input type="text" id="name" name="name" value="<%=client.getName()%>">
		<br>
		<label for="city">Company Client City:</label>
		<br>
		<input type="text" id="city" name="city" value="<%=client.getCity()%>">
		<br>
		<label for="address">Company Client Address:</label>
		<br>
		<input type="text" id="address" name="address" value="<%=client.getAddress()%>">
		<br>
		<input type="submit" value="Update Company Client Data">
	</form>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>