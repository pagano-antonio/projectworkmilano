<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Candidate By Education Degree Type</title>
</head>
<body>
<%@ include file="header.jsp" %>

<h2>Find Candidate By Education Degree Type:</h2>
	
	<form action="${pageContext.request.contextPath}/candidate/findCandidateByEDT" method="GET">
	<label for="idEducationDegreeType">Choose an Education Degree Type:</label>
	<br>
	<select name="idEducationDegreeType" id="idEducationDegreeType">
		<c:forEach var="edt" items="${EDTList}">
				<option value="${edt.idEducationDegreeType}">${edt.description}</option>
			</c:forEach>
	</select>
	<br>
	<input type="submit" value="Find Candidate">
	</form>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>