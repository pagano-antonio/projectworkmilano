<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Candidate By Education Degree Type: Results</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br><br><br>
<h2>Find Candidate By Education Degree Type: Results</h2>


	
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
			<th rowspan="1">EDT</th>
			<th colspan="2"></th>
		</tr>
		<c:forEach var="can" items="${candidatesEDTResults}">
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
			<td>${can.educations[0].educationDegreeType.description}</td>
			<td><a href="${pageContext.request.contextPath}/candidate/updateCandidateForm?idCandidate=${can.idCandidate}"><button>Update Candidate Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/candidate/delete?idCandidate=${can.idCandidate}"><button>Delete Candidate Data</button></a></td>
		</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>