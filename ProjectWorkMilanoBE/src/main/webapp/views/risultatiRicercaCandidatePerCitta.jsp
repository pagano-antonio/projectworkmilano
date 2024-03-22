<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Risultati Ricerca Candidato Per Citta':</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Id Candidate</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Birthday</th>
                <th>BirthPlace</th>
                <th>Address</th>
                <th>City</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="candidateLista" items="${candidateLista}">
                <tr>
                    <td>${candidateLista.idCandidate}</td>
                    <td>${candidateLista.name}</td>
                    <td>${candidateLista.surname}</td>
                    <td>${candidateLista.birthday}</td>
                    <td>${candidateLista.birthPlace}</td>
                    <td>${candidateLista.address}</td>
                    <td>${candidateLista.city}</td>
                    <td>${candidateLista.email}</td>
                    <td>${candidateLista.phone}</td>
                    <td>
                    
                    
              <form action="${pageContext.request.contextPath}/candidate/updateCandidateForm" method="Get">
    		<input type="hidden" name="idCandidate" value="${candidateLista.idCandidate}">
    <button type="submit">Aggiorna</button>
			</form>
                        
                        <form action="${pageContext.request.contextPath}/candidate/delete" method="Get">
                            <input type="hidden" name="idCandidate" value="${candidateLista.idCandidate}">
                            <button type="submit">Elimina</button>
                        </form>
   
    <form action="${pageContext.request.contextPath}/candidate/findCandidateBySkill" method="Get">
        <input type="hidden" name="idCandidate" value="${candidateLista.idCandidate}">
        <button type="submit">Skills</button>
    </form>
    
     <form action="${pageContext.request.contextPath}/candidate/findCCDataByIdCandidate" method="Get">
        <input type="hidden" name="idCandidate" value="${candidateLista.idCandidate}">
        <button type="submit">Education Degree Type</button>
    </form>
                        
                        <a href="${pageContext.request.contextPath}/home">Go back Home</a>
                    </td>
                </tr>
            </c:forEach>
         </thead>
        <tbody>
</body>
</html>
