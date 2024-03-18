<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Education"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Education Data</title>
</head>
<body>
	<h2>Update Education Data:</h2>
	
	<%Education ed = (Education) request.getAttribute("idEducation");%>
	
	<form action="${pageContext.request.contextPath}/EducationCtr/updateEducation" method="POST">
		<label for="idEducation">Education ID:</label>
		<br>
		<input readonly type="number" id="idEducation" name="idEducation" value="<%=ed.getIdEducation()%>">
		<br>
		<label for="idEducationDegreeType">Education Degree Type:</label>
		<br>
		<select name="educationDegreeType.idEducationDegreeType" id="educationDegreeType">
			<c:forEach var="edt" items="${EDTlist}">
					<option value="${edt.idEducationDegreeType}">${edt.description}</option>
			</c:forEach>
		</select>
		<br>
		<label for="idCandidate">Candidate:</label>
		<br>
		<select name="candidate.idCandidate" id="idCandidate">
			<c:forEach var="candidate" items="${candidateList}">
				<option value="${candidate.idCandidate}">${candidate.name} ${candidate.surname}</option>
			</c:forEach>
		</select>		
		<br>
		<label for="schoolName">School Name:</label>
		<br>
		<input type="text" id="schoolName" name="schoolName" value="<%=ed.getSchoolName()%>">
		<br>
		<label for="place">School Place:</label>
		<br>
		<input type="text" id="place" name="place" value="<%=ed.getPlace()%>">
		<br>
		<label for="date">Graduation Date:</label>
		<br>
		<input type="date" id="date" name="date" value="<%=ed.getDate()%>">
		<br>
		<label for="finalGrade">Final Grade:</label>
		<br>
		<input type="text" id="finalGrade" name="finalGrade" value="<%=ed.getFinalGrade()%>">
		<br>
		<input type="submit" value="Update Contract Type Data">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>