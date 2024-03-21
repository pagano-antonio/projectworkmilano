<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIND CANDIDATE COMMERCIAL DATA BY ID CANDIDATE</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin: 10px;
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

</style>
</head>
<body>
<div class="container">
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
                <th>DELETE</th>
                <th>UPDATE</th>
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
                    <td><a href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/deleteCandidateCommercialData?idCandidateCommercial=${candidateCommercialData.idCandidateCommercial}">delete</a></td>
                    <td><a href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/updateCandidateCommercialDataForm?idCandidateCommercial=${candidateCommercialData.idCandidateCommercial}">update</a></td>
                </tr>
            </c:forEach>
        </tbody>
 
</table>

<p><a href="http://localhost:8080/home">GO HOME!</a></p>
</div>
</body>
</html>