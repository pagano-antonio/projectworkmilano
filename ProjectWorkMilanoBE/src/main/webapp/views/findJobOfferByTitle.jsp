<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Risultati ricerca JobOffer By Title</title>

</head>
<body>
<h1>Risultati Ricerca JobOffer By Title</h1>

	<table border="1, solid, #000000">

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
			
			
			
          <!-- FORM PER MODIFICA ED ELIMINA -->
			
                    
		</tr>
		
		</c:forEach>
	</table>
</body>
</html>