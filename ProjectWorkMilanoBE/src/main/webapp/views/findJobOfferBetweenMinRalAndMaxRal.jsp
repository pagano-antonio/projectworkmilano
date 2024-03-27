<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Job Offer By RAL - Results</title>
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
<h2>This is JOB OFFER between RAL</h2>
	
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
</div>	
</body>
</html>