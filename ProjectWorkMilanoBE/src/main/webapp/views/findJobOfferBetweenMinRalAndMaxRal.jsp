<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Risultati</title>
</head>
<body>
	<body>
	<h1>RISULTATO RICERCA OFFERTA DI LAVORO TRA DUE RAL</h1>
	
	<table class="table table-sm">
		<tr class="table-success">
			<th scope="col">IdJobOffer</th>
			<th scope="col">Title</th>
			<th scope="col">Description</th>	
			<th scope="col">StartDate</th>
			<th scope="col">EndDate</th>			
			<th scope="col">IdCompanyClient</th>
			<th scope="col">MaxRal</th>	
			<th scope="col">MinRal</th>			
			<th scope="col">IdContractType</th>
			<th scope="col">Update</th>		
			<th scope="col">Delete</th>				
		</tr>

		<c:forEach var="j" items="${offerList}">			
			
				<tr>
					<td class="table-success">${j.idJobOffer}</td>					
					<td class="table-success">${j.title}</td>			
					<td class="table-success">${j.description}</td>										
					<td class="table-success">${j.startDate}</td>
					<td class="table-success">${j.companyClient.idCompanyClient}</td>
					<td class="table-success">${j.minRal}</td>
					<td class="table-success">${j.maxRal}</td>
					<td class="table-success">${j.contractType.idContractType}</td>				
					<td><a href="${pageContext.request.contextPath}/JobOfferCtr/updateJobOfferForm?idJobOffer=${j.idJobOffer}"><button>Update</button></a></td>
					<td><a href="${pageContext.request.contextPath}/JobOfferCtr/delete?idJobOffer=${j.idJobOffer}"><button>Delete</button></a></td>
				</tr>					
		</c:forEach>				
	</table>
	
	<br>
	<a href="${pageContext.request.contextPath}/views/homeCristiana.jsp">Home</a>	
</body>
</html>

</body>
</html>