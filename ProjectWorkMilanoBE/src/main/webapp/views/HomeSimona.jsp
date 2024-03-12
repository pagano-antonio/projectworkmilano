<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>GESTIONALE COLLOQUIO</title>
<link rel="stylesheet" type="text/css" href="HomeMenuSimona.css">
</head>
<body>
<h3>Candidate Commercial Data</h3>

<ul>
<li><a href="${pageContext.request.contextPath}/views/preFindCCDataByIdCandidate.jsp">CERCA CANDIDATE COMMERCIAL DATA BY CANDIDATE</a>
<li><a href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/findByIdCandidateCommercialDataForm">CERCA CANDIDATE COMMERCIAL DATA BY ID</a>
<li><a href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialDataForm">AGGIUNGI CANDIDATE COMMERCIAL DATA BY CANDIDATE</a>

</ul>


</body>
</html>
