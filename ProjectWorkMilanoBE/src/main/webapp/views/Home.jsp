<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>GESTIONALE COLLOQUIO</title>
</head>
<body>
<br><br>
<!-- il link è: http://localhost:8080/home -->

    <ul>
        <li><a href="${pageContext.request.contextPath}/candidate/preRicercaCitta">INSERISCI CITTA :</a></li>
    </ul>

<a href="${pageContext.request.contextPath}/views/preFindCCDataByIdCandidate.jsp">CERCA CANDIDATE COMMERCIAL DATA BY CANDIDATE</a>

<h3>Company Client</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/addCompanyClientForm">Add Company Client</a></li>
</ul>

</body>
</html>
