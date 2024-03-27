<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Education"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Education by ID: Results</title>
<%@ include file="header.jsp"%>
<style>
body {
        font-family: Century Gothic;
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    padding: 10px;
    margin: 10px;
    }

    .container {
font-family: Century Gothic;
        justify-content: center;      
        align-items: center;
        background: white;
        padding: 10px;
    margin: 10px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
  H1 {
  position: absolute;
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
 H2 {
  position: absolute; 
  top: 20%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  border-radius: 10px;
  z-index: 9999; 
}
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 1px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
<div class="container">
<h1>EDUCATION</h1> 
	<h2>Education by ID: Results</h2>
	
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
	
</div>
</body>
</html>