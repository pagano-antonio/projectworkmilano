<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.ContractType"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Contract Type by ID: Results</title>
</head>
<body>
	<h2>Find Contract Type by ID: Results</h2>
	
	<table>
		<tr>
			<th>Contract Type ID</th>
			<th>Contract Title</th>
			<th>Contract Description</th>
			<th colspan="2"></th>
		</tr>
		<%ContractType contract = (ContractType) request.getAttribute("idContractType");%>
		<tr>
			<td><%=contract.getIdContractType()%></td>
			<td><%=contract.getTitle()%></td>
			<td><%=contract.getDescription()%></td>
			<td><a href="${pageContext.request.contextPath}/ContractTypeCtr/preUpdateContractTypeForm?idContractType=<%=contract.getIdContractType()%>"><button>Update Contract Type Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/ContractTypeCtr/deleteContractType?idContractType=<%=contract.getIdContractType()%>"><button>Delete Company Client Data</button></a></td>
		</tr>
	</table>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>