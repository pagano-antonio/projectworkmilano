<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Education"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Education Form</title>
</head>
<body>
	<h2>Add Education:</h2>
	
	<form action="${pageContext.request.contextPath}/EducationCtr/addEducation" method="POST">
	<label for="idCandidate">Choose a Candidate:</label>
	<br>
	<select name="candidate.idCandidate" id="idCandidate">
		<c:forEach var="candidate" items="${candidateList}">
				<option value="${candidate.idCandidate}">${candidate.name} ${candidate.surname}</option>
			</c:forEach>
	</select>
	<br>
	<label for="educationDegreeType">Choose a Degree Type:</label>
	<br>
	<select name="educationDegreeType.idEducationDegreeType" id="educationDegreeType">
		<c:forEach var="edt" items="${EDTlist}">
				<option value="${edt.idEducationDegreeType}">${edt.description}</option>
			</c:forEach>
	</select>
	<br>
	<label for="schoolName">Insert the School Name:</label>
	<br>
	<input type="text" id="schoolName" name="schoolName">
	<br>
	<label for="place">Insert the School Name City:</label>
	<br>
	<input type="text" id="place" name="place">
	<br>
	<label for="date">Insert Graduation Date:</label>
	<br>
	<input type="date" id="date" name="date">
	<br>
	<label for="finalGrade">Insert Final Grade:</label>
	<br>
	<input type="text" id="finalGrade" name="finalGrade">
	<br>
	<input type="submit" value="Add Education">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>