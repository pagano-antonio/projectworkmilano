<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIND CANDIDATE COMMERCIAL DATA BY ID CANDIDATE</title>
<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
<table>
<thead>
            <tr>
                <th>ID CANDIDATE COMMERCIAL</th>
                <th>ID CANDIDATE</th>
                <th>CURRENT RAL</th>
                <th>PROPOSED RAL</th>
                <th>MONTH REFUND</th>
                <th>BUSINESS COST</th>
                <th>SUBSIDY FLAG</th>
                <th>NOTES</th>
            </tr>
        </thead>
  <tbody>
            <c:forEach var="candidateCommercialData" items="${LISTA}">
                <tr>
                    <td><c:out value="${candidateCommercialData.idCandidateCommercial}" /></td>
                    <td><c:out value="${candidateCommercialData.candidate.idCandidate}" /></td>
                    <td><c:out value="${candidateCommercialData.currentRal}" /></td>
                    <td><c:out value="${candidateCommercialData.proposedRal}" /></td>
                    <td><c:out value="${candidateCommercialData.monthRefund}" /></td>
                    <td><c:out value="${candidateCommercialData.businessCost}" /></td>
                    <td><c:out value="${candidateCommercialData.subsidyFlag}" /></td>
                    <td><c:out value="${candidateCommercialData.notes}" /></td>
                </tr>
            </c:forEach>
        </tbody>
 
</table>


</body>
</html>