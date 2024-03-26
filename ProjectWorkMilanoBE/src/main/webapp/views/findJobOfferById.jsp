<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model.JobOffer"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Risultati ricerca JobOffer By Id Company Client</title>
</head>
<body>
<h1>Risultati Ricerca JobOffer By Id Company Client</h1>

	<table border="1">

		<tr>
			<th>IdJobOffer</th>
			<th>Title</th>
			<th>Description</th>
			<th>StartDate</th>
			<th>EndDate</th>
			<th>IdCompanyClient</th>
			<th>MinRal</th>
			<th>MaxRal</th>
			<th>IdContractType</th>
		</tr>
		
			<c:forEach var="j" items="${offerList}">
		
		<tr>
			<td>${j.idJobOffer}</td>
			<td>${j.title}</td>
			<td>${j.description}</td>
			<td>${j.startDate}</td>
			<td>${j.endDate}</td>
			<td>${j.companyClient.idCompanyClient}</td>
			<td>${j.minRal}</td>
			<td>${j.maxRal}</td>
			<td>${j.contractType.idContractType}</td>

        <td><a href="${pageContext.request.contextPath}/JobOfferCtr/updateJobOfferForm?idJobOffer=${j.idJobOffer}"><button>Update</button></a></td>
		<td><a href="${pageContext.request.contextPath}/JobOfferCtr/delete?idJobOffer=${j.idJobOffer}"><button>Delete</button></a></td>				
			          
		</tr>
		
		</c:forEach>
	</table>


</body>
</html>
