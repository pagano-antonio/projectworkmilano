<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Candidate by Phone: Results</title>
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
button[type="submit"] {
        margin-top: 20px; /* Adjust as needed */
        margin-left:100px;
        width: 150px; /* Adjust as needed */
    }
label {
    font-weight: bold; /* Rende il testo in grassetto */
    color: #333; /* Colore del testo */
    margin-right: 10px; /* Spazio a destra del label */
  }

  /* Stile per l'input text */
  input[type="text"] {
    padding: 5px; /* Spazio interno dell'input */
    border: 1px solid #ccc; /* Bordo grigio */
    border-radius: 3px; /* Bordi arrotondati */
    font-size: 14px; /* Dimensione del testo */
  }
  input[type="number"] {
    padding: 5px; /* Spazio interno dell'input */
    border: 1px solid #ccc; /* Bordo grigio */
    border-radius: 3px; /* Bordi arrotondati */
    font-size: 14px; /* Dimensione del testo */
  }
   br {
    margin-bottom: 10px; /* Spazio sotto il break */
  }
</style>
</head>
<body>
	<h2>Find Candidate by Phone: Results</h2>
	<table>
		<tr>
			<th>Candidate ID</th>
			<th>Name</th>
			<th>Surname</th>
			<th>Birthday</th>
			<th>Birth Place</th>
			<th>Address</th>
			<th>City</th>
			<th>Email</th>
			<th>Phone</th>
			<th colspan="2"></th>
		</tr>
		<c:forEach var="can" items="${candidatesPhonesResults}">
		<tr>
			<td>${can.idCandidate}</td>
			<td>${can.name}</td>
			<td>${can.surname}</td>
			<td>${can.birthday}</td>
			<td>${can.birthPlace}</td>
			<td>${can.address}</td>
			<td>${can.city}</td>
			<td>${can.email}</td>
			<td>${can.phone}</td>
			<td><a href="${pageContext.request.contextPath}/candidate/updateCandidateForm?idCandidate=${can.idCandidate}"><button>Update Candidate Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/candidate/delete?idCandidate=${can.idCandidate}"><button>Delete Candidate Data</button></a></td>
			
			  <!-- TASTI PER INFO SU CANDIDATE -->
   
          
 <td>  
    <form action="${pageContext.request.contextPath}/skill/ricercaSkillPerIdCandidate" method="Get">
        <input type="hidden" name="idCandidate" value="${can.idCandidate}">
        <button type="submit">Skills</button>
    </form>
    
     <form action="${pageContext.request.contextPath}/candidate/ricercaCandidatoPerStateJobInterview" method="Get">
    <input type="hidden" name="idStateJobInterview" value="${can.idCandidate}">
    <button type="submit">Job Interview</button>
</form>

<form action="${pageContext.request.contextPath}/EducationCtr/findByIdEducation" method="Get">
    <input type="hidden" name="idEducation" value="${can.idCandidate}">
    <button type="submit">Education </button>
</form>

<form action="${pageContext.request.contextPath}/wk/ricercaWEPerIdCandidate" method="Post">
    <input type="hidden" name="idCandidate" value="${can.idCandidate}">
    <button type="submit">Work Experience </button>
</form>
 </td>  		
		</tr>
		</c:forEach>
	</table>
</body>
</html>