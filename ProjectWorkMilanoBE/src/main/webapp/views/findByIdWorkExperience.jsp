<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.WorkExperience"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<h2>Find Education by ID: Results</h2>
	
	<table>
		<tr>
			<th>Id Work Experience</th>
			<th>Id Candidate</th>
			<th>Title</th>
			<th>Descriprion</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Company</th>
			<th>City</th>
			<th>Update</th>
			<th>Delete</th>			
			</tr>
			
			<%WorkExperience wk = (WorkExperience) request.getAttribute("WorkExperience");%>
			
			<tr>	
					
			<td><%=wk.getIdWorkExperience()%></td>			
			<td><%=wk.getCandidate().getIdCandidate()%></td>
			<td><%=wk.getTitle()%></td>
			<td><%=wk.getDescription()%></td>
			<td><%=wk.getStartDate()%></td>				
			<td><%=wk.getEndDate()%></td>
			<td><%=wk.getCompany()%></td>
			<td><%=wk.getCity()%></td>
			<td><a href="${pageContext.request.contextPath}/wk/updateWorkExperienceForm?idWorkExperience=<%=wk.getIdWorkExperience()%>""><button>Update</button></a></td>
			<td><a href="${pageContext.request.contextPath}/wk/delete?idWorkExperience=<%=wk.getIdWorkExperience()%>"><button>Delete</button></a></td>	
			</tr>
	</table>
	<br>
	<a href="${pageContext.request.contextPath}/home">Go back Home</a>

</body>
</html>