<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobInterview"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Job Interview form</title>
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
/* Stile per il break */
br {
	margin-bottom: 10px; /* Spazio sotto il break */
}

button[type="submit"] {
	margin-top: 20px; /* Adjust as needed */
	margin-left: 50px;
	width: 150px; /* Adjust as needed */
}
</style>
</head>
<body>
	<div class="container">
		<h1>JOB INTERVIEW</h1>

		<h2>Add Job Interview form:</h2>


		<form
			action="${pageContext.request.contextPath}/JobInterviewCtr/addJobInterview"
			method="post">

			<br> <label for="idCandidate">Candidate:</label> <br> <select
				name="candidate.idCandidate" id="idCandidate">
				<c:forEach var="candidate" items="${candidateList}">
					<option value="${candidate.idCandidate}">${candidate.name}
						${candidate.surname}</option>
				</c:forEach>
			</select> <br> <label for="date">Date:</label> <br> <input
				type="date" id="date" name="date" required> <br> <label
				for="idStateJobInterview">Id State Job Interview:</label> <br>
			<select name="stateJobInterview.idStateJobInterview"
				id="stateJobInterview">
				<c:forEach var="ji" items="${Jilist}">
					<option value="${ji.idStateJobInterview}">${ji.title}</option>
				</c:forEach>
			</select> <br> <label for="outcome">Outcome:</label> <br> <input
				type="text" id="outcome" name="outcome" required> <br>
			<label for="notes">Notes:</label> <br> <input type="text"
				id="notes" name="notes" required> <br> <label
				for="idEmployee">Id Employee:</label> <br> <select
				name="employee.idEmployee" id="idEmployee">
				<c:forEach var="employee" items="${employeeList}">
					<option value="${employee.idEmployee}">${employee.name}
						${employee.surname}</option>
				</c:forEach>
			</select> <br> <input type="submit" value="Add Job Interview">
		</form>
		<br>
	</div>
</body>
</html>