<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Risultati ricerca JobOffer By id Skill</title>
</head>
<body>
    <h1>Risultati Ricerca JobOffer By id Skill</h1>

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
</body>
</html>
