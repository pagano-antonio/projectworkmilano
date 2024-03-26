<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD CANDIDATE COMMERCIAL DATA</title>
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
	margin-left: 100px;
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

br {
	margin-bottom: 10px; /* Spazio sotto il break */
}
</style>

</head>
<body>
<div class="container">
	<h1>ADD NEW CANDIDATE COMMERCIAL DATA</h1>
	<h2>Insert informations here:</h2>
	<form:form
		action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialData"
		method="post" modelAttribute="candidateCommercialData">

		<label for="candidate">Select Candidate:</label>
		<select id="candidate" name="candidate">
			<c:forEach items="${candidates}" var="candidate">
				<option value="${candidate.idCandidate}">${candidate.name}
					${candidate.surname}</option>
			</c:forEach>
		</select>
		<br>
		<label for="currentRal">Select Current Ral:</label>
		<input type="text" name="currentRal" placeholder="currentRal">
		<br>
		<label for="proposedRal">Select Proposed Ral:</label>
		<input type="text" name="proposedRal" placeholder="proposedRal">
		<br>
		<label for="monthRefund">Select Month Refund:</label>
		<input type="text" name="monthRefund" placeholder="monthRefund">
		<br>
		<label for="businessCost">Select Business Cost:</label>
		<input type="text" name="businessCost" placeholder="businessCost">
		<br>
		<label for="subsidyFlag">Select Subsidy Flag:</label>
		<input type="text" name="subsidyFlag" placeholder="subsidyFlag">
		<br>
		<label for="notes">Add notes:</label>
		<input type="text" name="notes" placeholder="notes">
		<br>
		<label for="submit">If you have added all the information
			correctly, click here:</label>
		<input type="submit" value="Add">
	</form:form>
</div>
</body>
</html>
