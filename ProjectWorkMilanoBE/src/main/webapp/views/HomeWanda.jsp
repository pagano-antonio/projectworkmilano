<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<style>
    body {
        background-color: #f0e6ff; 
    }
    .container {
        margin: 50px auto;
        text-align: center;
    }
    h1 {
        color: white; 
    }
    table {
        border: 2px solid #6200ea; 
        border-collapse: collapse;
        width: 50%;
        margin: 0 auto;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
    }
    th {
        background-color: #b39ddb; 
    a {
        display: block;
        margin-bottom: 10px;
        font-size: 18px;
        color: #6200ea; 
        text-decoration: none;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Welcome to our Unicorn Recruitment Agency!</h1>
    <table>
        <tr>
            <th colspan="2">Quick Links</th>
        </tr>
        <tr>
        
        
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCitta">Inserisci Città</a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preAddCandidateForm">Aggiungi un nuovo candidato</a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerCompagnia">Inserisci Compagnia</a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerStateJobInterview">Inserisci Id State Job Interview</a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerOutcome">Inserisci Outcome</a></td>
            <td><a href="${pageContext.request.contextPath}/JobOfferCtr/preRicercaSkill">Inserisci idSkill per JobOffer</a></td>
           <td><a href="${pageContext.request.contextPath}/wk/preRicercaWEPerIdCandidate"> RICERCA WORK EXPERIENCE PER ID CANDIDATE</a></td>                                 
              <td><a href="${pageContext.request.contextPath}/candidate/findByIdCandidateForm">Inserisci Id Candidate</a></td>
        <td><a href="${pageContext.request.contextPath}/candidate/preAddCandidateForm">Add Candidate </a></td>
    <td><a href="${pageContext.request.contextPath}/candidate/preFindCandidateBySurnameForm">Find a Candidate by surname</a></td>
<td><a href="${pageContext.request.contextPath}/candidate/preFindCandidateByPhoneForm">Find a Candidate by phone</a></td>
<td><a href="${pageContext.request.contextPath}/candidate/findCandidateBySkillForm">CERCA UN CANDIDATO TRAMITE UNA SKILL</a></td>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferBetweenMinRalAndMaxRalForm">CERCA OFFERTA DI LAVORO TRA DUE RAL</a></td>
<td><a href="${pageContext.request.contextPath}/candidate/preFindCandidateByEDTForm">Education Degree Type</a></td>
 <td><a href="${pageContext.request.contextPath}/skill/preRicercaSkillById">Ricerca Skill Per IdSkill</a></td>
   <td><a href="${pageContext.request.contextPath}/skill/preRicercaSkillPerIdCandidate">Inserisci idCandidate per skill</a></td>
               <td><a href="${pageContext.request.contextPath}/candidate/find">FIND</a></td>



        </tr>
    </table>
   
</div>
</body>
</html>
