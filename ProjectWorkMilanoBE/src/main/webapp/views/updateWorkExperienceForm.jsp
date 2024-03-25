<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.WorkExperience"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update </title>
</head>
<body>
	<h1>Update Work Experience</h1>

	<form action="${pageContext.request.contextPath}/wk/updateWork" method="post">
		
	<%WorkExperience wk = (WorkExperience) request.getAttribute("WorkExperience");%>
		
		<label for="idWorkExperience">Id Work Experience:</label>
		<br>
		<input readonly type="number" id="idWorkExperience" name="idWorkExperience" value="<%=wk.getIdWorkExperience()%>">		
		<br>
		<label for="idCandidate">Id Candidate:</label>
		<br>
		<input type="number" id="idCandidate" name="idCandidate" value=<%=wk.getCandidate().getIdCandidate()%>>
		<br>
		<label for="title">Title</label>
		<br>
		<input type="text" id="title" name="title" value="<%=wk.getTitle()%>">
		<br>
		<label for="description">Description</label>
		<br>
		<input type="text" id="description" name="description" value="<%=wk.getDescription()%>">
		<br>
		<label for="startDate">Start Date</label>
		<br>
		<input type="date" id="startDate" name="startDate" value="<%=wk.getStartDate()%>">
		<br>
		<label for="endDate">End Date</label>
		<br>
		<input type="date" id="endDate" name="endDate" value="<%=wk.getEndDate()%>">
		<br>
		<label for="company">Company</label>
		<br>
		<input type="text" id="company" name="company" value="<%=wk.getCompany()%>">
		<br>
		<label for="city">City</label>
		<br>
		<input type="text" id="city" name="city" value="<%=wk.getCity()%>">
		<br>
		<input type="submit" value="Update">
	</form>
</body>
</html>