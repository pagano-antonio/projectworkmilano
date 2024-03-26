<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate by skill</title>
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
<h2>This is Candidates' LIST by skill</h2>
	
	<table>
		<tr>
			<th>IdCandidate</th>
			<th>Name</th>
			<th>Surname</th>
			<th>Birthday</th>
			<th>Birth Place</th>
			<th>Address</th>	
			<th>City</th>
			<th>Email</th>
			<th>Phone</th>		
			<th>Actions</th>			
		</tr>

		<c:forEach var="c" items="${candidatesBySkill}">			
			
				<tr>
					<td>${c.idCandidate}</td>					
					<td>${c.name}</td>			
					<td>${c.surname}</td>										
					<td>${c.birthday}</td>
					<td>${c.birthPlace}</td>
					<td>${c.address}</td>
					<td>${c.city}</td>
					<td>${c.email}</td>
					<td>${c.phone}</td>
					<td>
					<a href="${pageContext.request.contextPath}/candidate/updateCandidateForm?idCandidate=${c.idCandidate}">Update</a>
					<a href="${pageContext.request.contextPath}/candidate/delete?idCandidate=${c.idCandidate}">Delete</a>

    <form action="${pageContext.request.contextPath}/skill/ricercaSkillPerIdCandidate" method="Get">
        <input type="hidden" name="idCandidate" value="${c.idCandidate}">
        <button type="submit">Skills</button>
    </form>  
     <form action="${pageContext.request.contextPath}/candidate/ricercaCandidatoPerStateJobInterview" method="Get">
    <input type="hidden" name="idStateJobInterview" value="${c.idCandidate}">
    <button type="submit">Job Interview</button>
</form>

<form action="${pageContext.request.contextPath}/EducationCtr/findByIdEducation" method="Get">
    <input type="hidden" name="idEducation" value="${c.idCandidate}">
    <button type="submit"> Education </button>
</form>

<form action="${pageContext.request.contextPath}/wk/ricercaWEPerIdCandidate" method="Post">
    <input type="hidden" name="idCandidate" value="${c.idCandidate}">
    <button type="submit">Work Experience </button>
</form>
 </td>    
					
				</tr>					
		</c:forEach>				
	</table>
</div>
</body>
</html>