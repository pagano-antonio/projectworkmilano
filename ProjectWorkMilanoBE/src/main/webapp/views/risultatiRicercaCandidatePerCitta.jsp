<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Candidate by city:</title>
<style>
* {
	font-family: Century Gothic;
	align-items: center;
	justify-content: center;
	padding: 0;
	margin: 0;
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
  color: black; /* colore del testo */
  text-decoration: underline; /* rimuove il sottolineato di default */
  transition: color 0.3s ease;
  border-radius: 10px; /* animazione del cambio di colore */
}

a:hover {
  color: white;
  background-color: #f7308c; /* colore del testo al passaggio del mouse */
  border-radius: 3px;
}
</style>
</head>
<body>
<<<<<<< HEAD
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
                        
                        

   <!-- TASTI PER INFO SU CANDIDATE -->
   
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
     
              
              <!-- TASTO HOMEß -->
              
                        <a href="${pageContext.request.contextPath}/home">Go back Home</a>
                    </td>
                </tr>
            </c:forEach>
         </thead>
        <tbody>
=======
<div class="container">
<h1>THIS IS THE CANDIDATE LIST BY CITY</h1> 
<h2>Select desired action</h2> 

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
				<th>Action</th>
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


						<form
							action="${pageContext.request.contextPath}/candidate/updateCandidateForm"
							method="Get">
							<input type="hidden" name="idCandidate"
								value="${candidateLista.idCandidate}">
							<button type="submit">Update</button>
						</form>

						<form action="${pageContext.request.contextPath}/candidate/delete"
							method="Get">
							<input type="hidden" name="idCandidate"
								value="${candidateLista.idCandidate}">
							<button type="submit">Delete</button>
						</form>

						<form
							action="${pageContext.request.contextPath}/candidate/findCandidateBySkill"
							method="Get">
							<input type="hidden" name="idCandidate"
								value="${candidateLista.idCandidate}">
							<button type="submit">Skills</button>
						</form>

						<form
							action="${pageContext.request.contextPath}/candidate/findCCDataByIdCandidate"
							method="Get">
							<input type="hidden" name="idCandidate"
								value="${candidateLista.idCandidate}">
							<button type="submit">Education Degree Type</button>
						</form> 
					</td>
				</tr>
			</c:forEach>
		<tbody>
  </table>
  <br>
  <a href="${pageContext.request.contextPath}/home">Go Home</a>
  <br>
  </div>
>>>>>>> 8cfc4f42025454a2feb36d2a3c53be8cbf3b37ef
</body>
</html>
