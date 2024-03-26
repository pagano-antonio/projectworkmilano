<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title>Risultati Ricerca Candidato Per Outcome</title>
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

<h1>CANDIDATE</h1>
<h2>Candidates' OUTCOME:results</h2>
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
                    
                    
      <!-- TASTI PER INFO SU CANDIDATE -->
   
          
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
    
     <form action="${pageContext.request.contextPath}/candidate/ricercaCandidatoPerStateJobInterview" method="Get">
    <input type="hidden" name="idStateJobInterview" value="${candidateLista.idCandidate}">
    <button type="submit">Job Interview</button>
</form>

<form action="${pageContext.request.contextPath}/EducationCtr/findByIdEducation" method="Get">
    <input type="hidden" name="idEducation" value="${candidateLista.idCandidate}">
    <button type="submit">Education </button>
</form>

<form action="${pageContext.request.contextPath}/wk/ricercaWEPerIdCandidate" method="Post">
    <input type="hidden" name="idCandidate" value="${candidateLista.idCandidate}">
    <button type="submit">Work Experience </button>
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





