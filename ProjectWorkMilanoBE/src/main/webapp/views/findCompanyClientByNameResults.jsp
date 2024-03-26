<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by Name: Results</title>
<%@ include file="header.jsp"%>
</head>
<body>
<br>
	<h2>Find Company Client by Name: Results</h2>
	
	<table>
		<tr>
			<th>Company Client ID</th>
			<th>Company Client Name</th>
			<th>Company Client City</th>
			<th>Company Client Address</th>
			<th colspan="2"></th>
		</tr>
		<c:forEach var="cc" items="${companyClientNamesResults}">
		<tr>
			<td>${cc.idCompanyClient}</td>
			<td>${cc.name}</td>
			<td>${cc.city}</td>
			<td>${cc.address}</td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/preUpdateCompanyClientForm?idCompanyClient=${cc.idCompanyClient}"><button>Update Company Client Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=${cc.idCompanyClient}&name=${cc.name}&searchType=byName"><button>Delete Company Client Data</button></a></td>
		    <td><a href="${pageContext.request.contextPath}/JobOfferCtr/preFindJobOfferByIdCompanyClient?idCompanyClient=${cc.idCompanyClient}"><button><b>See Job Offers</b></button></a></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>