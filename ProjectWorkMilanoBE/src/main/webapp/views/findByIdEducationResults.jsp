<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Education"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Education by ID: Results</title>
</head>
<body>
	<h2>Find Education by ID: Results</h2>
	
	<table>
		<tr>
			<th>Education ID</th>
			<th>Education Degree Type ID</th>
			<th>Candidate ID</th>
			<th>School Name</th>
			<th>Place</th>
			<th>Date</th>
			<th>Final Grade</th>
			<th colspan="2"></th>
		</tr>
		<%Education ed = (Education) request.getAttribute("idEducation");%>
		<tr>
			<td><%=ed.getIdEducation()%></td>
			<td rowspan="2"><%=ed.getEducationDegreeType().getIdEducationDegreeType()%>
				<br>
				<%=ed.getEducationDegreeType().getDescription()%>
			</td>
			<td rowspan="2"><%=ed.getCandidate().getIdCandidate()%>
				<br>
				<%=ed.getCandidate().getName()%> <%=ed.getCandidate().getSurname()%>
			</td>
			<td><%=ed.getSchoolName()%></td>
			<td><%=ed.getPlace()%></td>
			<td><%=ed.getDate()%></td>
			<td><%=ed.getFinalGrade()%></td>
			<td><a href="${pageContext.request.contextPath}/EducationCtr/preUpdateEducationForm?idEducation=<%=ed.getIdEducation()%>"><button>Update Education Data</button></a></td>
			<td><a href="${pageContext.request.contextPath}/EducationCtr/deleteEducation?idEducation=<%=ed.getIdEducation()%>"><button>Delete Education Data</button></a></td>
		</tr>
	</table>
	
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>
</body>
</html>