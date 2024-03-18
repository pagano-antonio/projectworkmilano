<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.ContractType"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contract Type Data</title>
</head>
<body>
	<h2>Update Contract Type Data:</h2>
	
	<%ContractType contract = (ContractType) request.getAttribute("idContractType");%>
	
	<form action="${pageContext.request.contextPath}/ContractTypeCtr/updateContractType" method="POST">
		<label for="idCompanyClient">Company Client ID:</label>
		<br>
		<input readonly type="number" id="idContractType" name="idContractType" value="<%=contract.getIdContractType()%>">
		<br>
		<label for="title">Contract Type Title:</label>
		<br>
		<input type="text" id="title" name="title" value="<%=contract.getTitle()%>">
		<br>
		<label for="description">Contract Type Description:</label>
		<br>
		<textarea id="description" name="description" rows="4" cols="50" ><%=contract.getDescription()%></textarea>
		<br>
		<input type="submit" value="Update Contract Type Data">
	</form>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>