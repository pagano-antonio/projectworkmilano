<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.WorkExperience"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update </title>
</head>
<body>
	<h1>Update Work Experience</h1>

	<form action="${pageContext.request.contextPath}/wk/updateWork" method="post">
		
	<c:set var="wk" value="${WorkExperience}" />
	
		<label for="idWorkExperience">Id Work Experience:</label>
		<br>
		<input readonly type="number" id="idWorkExperience" name="idWorkExperience" value="${wk.idWorkExperience}">		
		<br>		
		<label for="candidate">Seleziona un candidato:</label>	
           <select id="candidate" name="candidate">
			 <c:forEach items="${candidates}" var="candidate">
                   <option value="${candidate.idCandidate}">
                       ${candidate.name} ${candidate.surname}
                   </option>
               </c:forEach>
           </select>
		<br>
		<label for="title">Title</label>
		<br>
		<input type="text" id="title" name="title" value="${wk.title}">
		<br>
		<label for="description">Description</label>
		<br>
		<input type="text" id="description" name="description" value="${wk.description}">
		<br>
		<label for="startDate">Start Date</label>
		<br>
		<input type="date" id="startDate" name="startDate" value="${wk.startDate}">
		<br>
		<label for="endDate">End Date</label>
		<br>
		<input type="date" id="endDate" name="endDate" value="${wk.endDate}">
		<br>
		<label for="company">Company</label>
		<br>
		<input type="text" id="company" name="company" value="${wk.company}">
		<br>
		<label for="city">City</label>
		<br>
		<input type="text" id="city" name="city" value="${wk.city}">
		<br>
		<input type="submit" value="Update">
	</form>
</body>
</html>