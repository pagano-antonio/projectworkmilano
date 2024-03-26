<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.CompanyClient"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Company Client by ID: Results</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 1px;
    margin: 1px;
}
body {
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        margin: 0;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    }

    .container {
        background: white;
        padding: 20px;
        border-radius: 10px;      
    }
  H1 {
  position: absolute;
  top: 10%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
 H2 {
  position: absolute; 
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid black;
  padding: 8px;
  text-align: left;
}
th {
  background-color: #f2f2f2;
}

a {
    color:black;
    position: absolute;
    top: 80%;
    left:50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  padding: 15px;
}
a:hover {
  color: white;
  background-color: black; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
	<h2>Find Company Client by ID: Results</h2>
	
	<table>
		<tr>
			<th>Company ID</th>
			<th>Company Name</th>
			<th>Company City</th>
			<th>Company Address</th>
			<th colspan="3"></th>
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
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
	
</body>
</html>