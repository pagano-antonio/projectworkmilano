<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.CompanyClient"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by ID: Results</title>
</head>
<body>
	<h2>Find Company Client by ID: Results</h2>
	
	<table>
		<tr>
			<th>Company ID</th>
			<th>Company Name</th>
			<th>Company City</th>
			<th>Company Address</th>
			<th colspan="2"></th>
		</tr>
		<%CompanyClient client = (CompanyClient) request.getAttribute("idCompanyClient");%>
		<tr>
			<td><%=client.getIdCompanyClient()%></td>
			<td><%=client.getName()%></td>
			<td><%=client.getCity()%></td>
			<td><%=client.getAddress()%></td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/preUpdateCompanyClientForm?idCompanyClient=<%=client.getIdCompanyClient()%>"><button>Update Company Client Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=<%=client.getIdCompanyClient()%>"><button>Delete Company Client Data</button></a></td>
		</tr>
	</table>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
	
</body>
</html>