<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by Name: Results</title>
<style>
body {
        font-family: Century Gothic;
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    padding: 10px;
    margin: 10px;
    }

    .container {
font-family: Century Gothic;
        justify-content: center;      
        align-items: center;
        background: white;
        padding: 10px;
    margin: 10px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
  H1 {
  position: absolute;
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
 H2 {
  position: absolute; 
  top: 20%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  border-radius: 10px;
  z-index: 9999; 
}
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 1px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
<div class="container">
<h1>COMPANY CLIENT</h1> 
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
</div>
</body>
</html>