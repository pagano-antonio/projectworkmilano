<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.WorkExperience"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By ID Work Experience - Results</title>
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
<h1>WORK EXPERIENCE</h1> 
	<h2>Work Experience by ID: Results</h2>
	
	<table>
		<tr>
			<th>Id Work Experience</th>
			<th>Id Candidate</th>
			<th>Title</th>
			<th>Description</th>
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
			<td><a href="${pageContext.request.contextPath}/wk/updateWorkExperienceForm?idWorkExperience=<%=wk.getIdWorkExperience()%>"><button>Update</button></a></td>
			<td><a href="${pageContext.request.contextPath}/wk/deleteWork?idWorkExperience=<%=wk.getIdWorkExperience()%>"><button>Delete</button></a></td>	
			</tr>
	</table>
	<br>
</div>

</body>
</html>