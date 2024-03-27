<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>See All Job Offers</title>
<%@ include file="header.jsp"%>
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

<h1>JOB OFFER</h1>
<h2>This is all JOB OFFERS</h2>
	
	<table>
		<tr>
			<th>IdJobOffer</th>
			<th>Title</th>
			<th>Description</th>	
			<th>StartDate</th>
			<th>EndDate</th>			
			<th>CompanyClient</th>
			<th>MaxRal</th>	
			<th>MinRal</th>			
			<th>ContractType</th>
			<th>Update</th>		
			<th>Delete</th>				
		</tr>

		<c:forEach var="j" items="${offerList}">			
			
				<tr>
					<td>${j.idJobOffer}</td>					
					<td>${j.title}</td>			
					<td>${j.description}</td>										
					<td>${j.startDate}</td>
					<td>${j.endDate}</td>
					<td>${j.companyClient.name}</td>
					<td>${j.minRal}</td>
					<td>${j.maxRal}</td>
					<td>${j.contractType.title}</td>				
					<td><a href="${pageContext.request.contextPath}/JobOfferCtr/updateJobOfferForm?idJobOffer=${j.idJobOffer}"><button>Update</button></a></td>
					<td><a href="${pageContext.request.contextPath}/JobOfferCtr/delete?idJobOffer=${j.idJobOffer}"><button>Delete</button></a></td>
				</tr>					
		</c:forEach>				
	</table>
</div>	

<a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertJobOffer"><button>Add new Job Offer</button></a>

</body>
</html>
