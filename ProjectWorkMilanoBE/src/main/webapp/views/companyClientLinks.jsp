<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.model.CompanyClient"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>FIND COMPANY CLIENT</title>
<style>
* {
	font-family: Century Gothic;
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
	color: black;
	position: absolute;
	top: 90%;
	left: 50%;
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
p.{
position:center;
}
</style>
</head>
<body>

	<div class="container">
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
		<%@ include file="findByIdCompanyClient.jsp"%>
		<br>
		<%@ include file="findCompanyClientByNameForm.jsp"%>
		<br>
		<%@ include file="findCompanyClientByCityForm.jsp"%>
		<br>

		<h1>FIND COMPANY CLIENT</h1>

		<%
    List<CompanyClient> tmp = (List<CompanyClient>) request.getAttribute("lista");
    if (tmp == null) {
        tmp = new ArrayList<>();
    }
%>
<p>COMPANY CLIENT'S LIST</p>

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
    <form action="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient" method="POST" style="display: inline;">
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
	
<a href="${pageContext.request.contextPath}/home">GO HOME</a>
	
</body>
</html>
