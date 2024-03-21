<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="com.model.CompanyClient" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html> 
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>FIND COMPANY CLIENT</title>

</head>
<body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<%@ include file="header.jsp" %>

<br><br><br>
<%@ include file="findByIdCompanyClient.jsp" %>
<%@ include file="findCompanyClientByNameForm.jsp" %>
<%@ include file="findCompanyClientByCityForm.jsp" %>


<h2>VISUALIZZA TUTTE</h2>

<%
    List<CompanyClient> tmp = (List<CompanyClient>) request.getAttribute("lista");
    if (tmp == null) {
        tmp = new ArrayList<>();
    }
%>

<table class="table table-dark table-striped">
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
        
<div class="center">
    <a href="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClient?idCompanyClient=<%= p.getIdCompanyClient() %>">
        <button type="button" style="border: none;">Vedi dettagli</button>
    </a>

    <a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=<%= p.getIdCompanyClient() %>">
        <button type="button" style="border: none;">Elimina</button>
    </a>

    <a href="${pageContext.request.contextPath}/CompanyClientCtr/preUpdateCompanyClientForm?idCompanyClient=<%= p.getIdCompanyClient() %>">
        <button type="button" style="border: none;">Aggiorna</button>
    </a>
</div>  
                    
                    
                    </td>
    </tr>
<% } %>
        
    </tbody>
</table>
<br><div class="center">
    <a href="${pageContext.request.contextPath}/PersonaCtr/home">
        <button type="button">Vai alla home</button>
    </a></div>



</body>
</html>
