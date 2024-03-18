<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by City: Results</title>
</head>
<body>
	<h2>Find Company Client by City: Results</h2>
	<table>
		<tr>
			<th>Company Client ID</th>
			<th>Company Client Name</th>
			<th>Company Client City</th>
			<th>Company Client Address</th>
			<th colspan="2"></th>
		</tr>
		<c:forEach var="cc" items="${companyClientCitiesResults}">
		<tr>
			<td>${cc.idCompanyClient}</td>
			<td>${cc.name}</td>
			<td>${cc.city}</td>
			<td>${cc.address}</td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/preUpdateCompanyClientForm?idCompanyClient=${cc.idCompanyClient}"><button>Update Company Client Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=${cc.idCompanyClient}&city=${cc.city}&searchType=byCity"><button>Delete Company Client Data</button></a></td>
		</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>