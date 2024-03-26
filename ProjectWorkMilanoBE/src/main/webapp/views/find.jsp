<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Candidate</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 5px;
    margin: 5px;
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
 H2 {
  position: relative; 
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
  width: auto;
}

th, td {
  border: 1px solid black;
  padding: 3px;
  text-align: left;
}

th {
  background-color: #f2f2f2;
}

a {
  color: black; /* colore del testo */
  text-decoration: none; /* rimuove il sottolineato di default */
  transition: color 0.3s ease;
  border-radius: 10px; /* animazione del cambio di colore */
}

a:hover {
  color: white;
  background-color: #f7308c; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}

</style>
</head>
<body>
<div class="container">
    <h1>CANDIDATE</h1>
    <br>
    <h2>Please, select the desired action!</h2>
    <br>
    <table>
        <tr>
            <td><a href="${pageContext.request.contextPath}/candidate/findByIdCandidateForm"><strong>Find by ID CANDIDATE</strong></a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCitta"><strong>Find by CITY</strong></a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerCompagnia"><strong>Find by COMPANY</strong></a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerStateJobInterview"><strong>Find by STATE JOB INTERVIEW</strong></a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerOutcome"><strong>Find by OUTCOME</strong></a></td>           
            <td><a href="${pageContext.request.contextPath}/candidate/preFindCandidateBySurnameForm"><strong>Find by SURNAME</strong></a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/preFindCandidateByPhoneForm"><strong>Find by PHONE</strong></a></td>
            <td><a href="${pageContext.request.contextPath}/candidate/findCandidateBySkillForm"><strong>Find by SKILL</strong></a></td>
			<td><a href="${pageContext.request.contextPath}/candidate/preFindCandidateByEDTForm"><strong>Find by EDUCATION DEGREE TYPE</strong></a></td>
			<td><a href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialDataForm"><strong>Add COMMERCIAL DATA</strong></a></td>
			
        </tr>
    </table>  
</div>
</body>
</html>