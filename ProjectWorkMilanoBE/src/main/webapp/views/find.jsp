<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Candidate Hub</title>
<%@ include file="header.jsp"%>
<meta charset="UTF-8">
<style>
  body {
        font-family: Century Gothic;
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    padding: 15px;
    margin: 15px;
    }

    .container {
font-family: Century Gothic;
        justify-content: center;      
        align-items: center;
        background: white;
        padding: 15px;
    margin:15px;
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
	padding: 14px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}
.custom-link {
  text-decoration: none; /* Rimuove la sottolineatura */
  color: black; /* Cambia il colore del testo */
  font-weight: bold; /* Rende il testo in grassetto */
  /* Altri stili che desideri applicare al link */
}

.custom-link:hover {
  color: #9370DB;; /* Cambia il colore del testo quando il cursore passa sopra il link */
  /* Altri stili che desideri applicare al link quando il cursore passa sopra */
}
</style>
</head>
<body>
<div class="container">
<h1>THIS IS CANDIDATE</h1> 
    <h2>Please, select the desired action!</h2>

    <table>
        <tr>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/findByIdCandidateForm"><strong>Find by ID CANDIDATE</strong></a></td>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCitta"><strong>Find by CITY</strong></a></td>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerCompagnia"><strong>Find by COMPANY</strong></a></td>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerStateJobInterview"><strong>Find by STATE JOB INTERVIEW</strong></a></td>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerOutcome"><strong>Find by OUTCOME</strong></a></td>           
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preFindCandidateBySurnameForm"><strong>Find by SURNAME</strong></a></td>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preFindCandidateByPhoneForm"><strong>Find by PHONE</strong></a></td>
            <td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/findCandidateBySkillForm"><strong>Find by SKILL</strong></a></td>
			<td><a class="custom-link" href="${pageContext.request.contextPath}/candidate/preFindCandidateByEDTForm"><strong>Find by EDUCATION DEGREE TYPE</strong></a></td>
			<td><a class="custom-link" href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialDataForm"><strong>Add COMMERCIAL DATA</strong></a></td>
			
        </tr>
    </table>  
</div>
</body>
</html>