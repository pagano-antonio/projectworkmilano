<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Candidate by Phone: Results</title>
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
   
          
   
    <form action="${pageContext.request.contextPath}/candidate/findCandidateBySkill" method="Get">
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
     
			
		</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>