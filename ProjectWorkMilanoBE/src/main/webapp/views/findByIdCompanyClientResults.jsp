<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.CompanyClient"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by ID - Results</title>
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
<h1>COMPANY CLIENT LIST</h1> 
	<h2>Find Company Client by ID: Results</h2>
	
	<table>
		<tr>
			<th>Company ID</th>
			<th>Company Name</th>
			<th>Company City</th>
			<th>Company Address</th>
			<th>Update</th>
			<th>Delete</th>
			<th>View JO</th>
			
		</tr>
		<%CompanyClient client = (CompanyClient) request.getAttribute("idCompanyClient");%>
		<tr>
			<td><%=client.getIdCompanyClient()%></td>
			<td><%=client.getName()%></td>
			<td><%=client.getCity()%></td>
			<td><%=client.getAddress()%></td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/preUpdateCompanyClientForm?idCompanyClient=<%=client.getIdCompanyClient()%>"><button>Update Company Client Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=<%=client.getIdCompanyClient()%>&searchType=byID"><button>Delete Company Client Data</button></a></td>
	     	<td><a href="${pageContext.request.contextPath}/JobOfferCtr/preFindJobOfferByIdCompanyClient?idCompanyClient=<%=client.getIdCompanyClient()%>"><button><b>See Job Offers</b></button></a></td>
		</tr>
	</table>
</div>
	
</body>
</html>