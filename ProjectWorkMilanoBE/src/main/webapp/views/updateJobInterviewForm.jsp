<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobInterview"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Job Interview form</title>
</head>
<body>
	<h2>Update Job Interview form:</h2>
	
	<%JobInterview ji = (JobInterview) request.getAttribute("LISTAji");%>
	
	<form action="${pageContext.request.contextPath}/JobInterviewCtr/updateJobInterview" method="post">
	
		
		<label for="idJobInterview">idJobInterview:</label>
		<br>
		<input readonly type="number" id="idJobInterview" name="idJobInterview" value="<%=ji.getIdJobInterview()%>">
		<br>
		<label for="idCandidate">Candidate:</label>
		<br>
		<select name="candidate.idCandidate" id="idCandidate">
			<c:forEach var="candidate" items="${candidateList}">
				<option value="${candidate.idCandidate}">${candidate.name} ${candidate.surname}</option>
			</c:forEach>
		</select>		
		<br>					
		<label for="date">Date:</label>
		<br>
		<input type="date" id="date" name="date" value="<%=ji.getDate()%>">
		<br>
		<label for="idStateJobInterview">Id State Job Interview:</label>
		<br>
		<select name="stateJobInterview.idStateJobInterview" id="stateJobInterview">
			<c:forEach var="ji" items="${Jilist}">
					<option value="${ji.idStateJobInterview}">${ji.title}</option>
			</c:forEach>
		</select>
		<br>			
		<label for="outcome">Outcome:</label>
		<br>
		<input type="text" id="outcome" name="outcome" value="<%=ji.getOutcome()%>">
		<br>
		
		<label for="notes">Notes:</label>
		<br>
		<input type="text" id="notes" name="notes" value="<%=ji.getNotes()%>">
		<br>
		<label for="idEmployee">Id Employee:</label>
		<br>
		<select name="employee.idEmployee" id="idEmployee">
			<c:forEach var="employee" items="${employeeList}">
				<option value="${employee.idEmployee}">${employee.name} ${employee.surname}</option>
			</c:forEach>
		</select>
		<br>		
		<input type="submit" value="Update Contract Type Data">
	</form>
	<br>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>