<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JobOffer By id Skill</title>
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

    <h2>JobOffer By id Skill: RESULTS!</h2>

    <table>
        <thead>
            <tr>
                <th>IdJobOffer</th>
                <th>Title</th>
                <th>Description</th>
                <th>StartDate</th>
                <th>EndDate</th>
                <th>IdCompanyClient</th>
                <th>MinRal</th>
                <th>MaxRal</th>
                <th>IdContractType</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="jobOffer" items="${jobOfferLista}">
                <tr>
                    <td>${jobOffer.idJobOffer}</td>
                    <td>${jobOffer.title}</td>
                    <td>${jobOffer.description}</td>
                    <td>${jobOffer.startDate}</td>
                    <td>${jobOffer.endDate}</td>
                    <td>${jobOffer.companyClient.idCompanyClient}</td>
                    <td>${jobOffer.minRal}</td>
                    <td>${jobOffer.maxRal}</td>
                    <td>${jobOffer.contractType.idContractType}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/JobOfferCtr/updateJobOfferForm" method="get">
                            <input type="hidden" name="idJobOffer" value="${jobOffer.idJobOffer}">
                            <button type="submit">Aggiorna</button>
                        </form>
                        <form action="${pageContext.request.contextPath}/JobOfferCtr/delete" method="post">
                            <input type="hidden" name="idJobOffer" value="${jobOffer.idJobOffer}">
                            <button type="submit">Elimina</button>
                        </form>
             
               <form action="${pageContext.request.contextPath}/candidate/findCandidateBySkill" method="Get">
        <input type="hidden" name="idCandidate" value="${candidateLista.idCandidate}">
        <button type="submit">Skills</button>
    </form>
             
                        <a href="${pageContext.request.contextPath}/home">Go back Home</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
</body>
</html>
