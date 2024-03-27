<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.model.CompanyClient"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Company Client Hub</title>
<%@ include file="header.jsp"%>
    <style>
  body {
    font-family: Century Gothic;
    display: flex;
    justify-content: center;      
    align-items: center;
    height: 100vh;
    background: linear-gradient(45deg, #3503ad, #f7308c);
  }
  
  .main-container {
    width: 90%; /* Utilizza il 90% della larghezza dello schermo */
    max-width: 1200px; /* Larghezza massima del contenitore */
    margin: 0 auto;
    text-align: center; /* Centra il contenitore orizzontalmente */
  }

  .container {
    font-family: Century Gothic;
    background: white;
    padding: 5px;
    margin: 5px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    text-align: center; /* Centra il testo all'interno del container */
  }

  H1 {
    position: absolute;
    top: 15%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-family: Century Gothic;
    background: white;
    border-radius: 10px;
  }
 H2 {
    position: absolute;
    top: 25%;
    left: 50%;
   
  H3 {
    text-align: center; /* Centra il testo all'interno dell'elemento H3 */
   }
  
  a, button {
    text-align: center; /* Centra il testo all'interno di link e pulsanti */
    text-decoration: none;
    color: black;
    font-weight: bold;
  }

  .custom-link:hover {
    color: #9370DB;
  }

table {
    border-collapse: collapse; /* Unisce i bordi delle celle */
    width: 100%;
    border: 3px solid black; /* Aggiunge un bordo al di fuori della tabella */
}

th, td {
    border: 3px solid black; /* Aggiunge un bordo a tutte le celle */
    padding: 2px; /* Aggiunge spazio interno alle celle */
    text-align: center;
}

th {
    background-color: #f2f2f2; /* Aggiunge un colore di sfondo alle celle dell'intestazione */
}

  /* Media query per schermi di dimensioni fino a 768px */
  @media only screen and (max-width: 768px) {
    .container {
      min-width: 150px; /* Riduci la larghezza minima per adattarsi ai dispositivi più piccoli */
    }
  }
</style>
</head>
<body>
	<div class="main-container">	
	<div class="container">

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
		<%@ include file="findByIdCompanyClient.jsp"%>
		</div>
			<div class="container">
		<%@ include file="findCompanyClientByNameForm.jsp"%>
		</div>
			<div class="container">
		<%@ include file="findCompanyClientByCityForm.jsp"%>
		</div>
</div>

		<%
    List<CompanyClient> tmp = (List<CompanyClient>) request.getAttribute("lista");
    if (tmp == null) {
        tmp = new ArrayList<>();
    }
%>

<div class="main-container">
<div class="container">

		<table>
			<thead>
				<tr>
					<th>idCompanyClient</th>
					<th>Name</th>
					<th>Address</th>
					<th>City</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<% for (CompanyClient p : tmp) { %>
				<tr>
					<td><%= p.getIdCompanyClient() %></td>
					<td><%= p.getName() %></td>
					<td><%= p.getAddress() %></td>
					<td><%= p.getCity() %></td>
					<td>
    <form action="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClient" method="GET" style="display: inline;">
        <input type="hidden" name="idCompanyClient" value="<%= p.getIdCompanyClient() %>">
        <button type="submit">Details</button>
    </form>
    <form action="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient" method="GET" style="display: inline;">
        <input type="hidden" name="idCompanyClient" value="<%= p.getIdCompanyClient() %>">
        <button type="submit">Delete</button>
    </form>
    <form action="${pageContext.request.contextPath}/CompanyClientCtr/preUpdateCompanyClientForm" method="GET" style="display: inline;">
        <input type="hidden" name="idCompanyClient" value="<%= p.getIdCompanyClient() %>">
        <button type="submit">Update</button>
    </form>
</td>
				</tr>

				<% } %>

			</tbody>
		</table>
	</div>
	</div>
</body>
</html>
