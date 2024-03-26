<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate by skill</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 1px;
    margin: 1px;
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

a {
    color:black;
    position: absolute;
    top: 80%;
    left:50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  padding: 15px;
}
a:hover {
  color: white;
  background-color: black; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
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

    <form action="${pageContext.request.contextPath}/candidate/findCandidateBySkill" method="Get">
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
	<a href="${pageContext.request.contextPath}/views/homeCristiana.jsp">Home</a>	
</body>
</html>