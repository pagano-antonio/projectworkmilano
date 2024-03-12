<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD CANDIDATE COMMERCIAL DATA</title>
</head>
<body>


	<p>INSERISCI I DATI COMMERCIALI</p>
	<form:form
		action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialData"
		method="post" modelAttribute="candidateCommercialData">

		<input type="text" name="idCandidateCommercial" placeholder="idCandidateCommercial" readonly>
		<br>
		<label for="candidate">Seleziona un candidato:</label>
		<select id="candidate" name="candidate">
			<c:forEach items="${candidates}" var="candidate">
				<option value="${candidate.idCandidate}">${candidate.name}
					${candidate.surname}</option>
			</c:forEach>
		</select>
		<br>

		<input type="text" name="currentRal" placeholder="currentRal" required>
		<br>
		<input type="text" name="proposedRal" placeholder="proposedRal"required>
		<br>
		<input type="text" name="monthRefund" placeholder="monthRefund"required>
		<br>
		<input type="text" name="businessCost" placeholder="businessCost"required>
		<br>
		<input type="text" name="subsidyFlag" placeholder="subsidyFlag"required>
		<br>
		<input type="text" name="notes" placeholder="notes" required>
		<br>
		<input type="submit" value="Aggiungi">
		<br>
	</form:form>

</body>
</html>