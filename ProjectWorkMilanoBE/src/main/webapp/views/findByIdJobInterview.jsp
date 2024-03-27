<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIND JOB INTERVIEW BY ID</title>
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

<h1>JOB INTERVIEW</h1>
<h2>This is job interview by ID</h2>
<table>
<thead>
            <tr>
                <th>ID JOB INTERVIEW</th>
                <th>CANDIDATE</th>
                <th>DATE</th>
                <th>STATE JOB INTERVIEW</th>
                <th>OUTCOME</th>
                <th>NOTES</th>
                <th>EMPLOYEE</th>               
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
        </thead>
  <tbody>
   
                <tr>
                   <td><c:out value="${interview.idJobInterview}" /></td>
                    <td><c:out value="${interview.candidate.name} ${interview.candidate.surname}" /></td>
                    <td><c:out value="${interview.date}" /></td>
                    <td><c:out value="${interview.stateJobInterview.title}" /></td>
                    <td><c:out value="${interview.outcome}" /></td>
                    <td><c:out value="${interview.notes}" /></td>
                    <td><c:out value="${interview.employee.name} ${interview.employee.surname}" /></td>
                    
                    <td><form action="${pageContext.request.contextPath}/JobInterviewCtr/delete" method="get">
					    <input type="hidden" name="idJobInterview" value="${interview.idJobInterview}">
					    <button type="submit">DELETE</button>
						</form></td>

					<td><form action="${pageContext.request.contextPath}/JobInterviewCtr/updateJobInterviewForm" method="get">
					    <input type="hidden" name="idJobInterview" value="${interview.idJobInterview}">
					    <button type="submit">UPDATE</button>
						</form></td>
						
					        </tr>					 
        </tbody>
 
</table>

<div>
<a href="${pageContext.request.contextPath}/JobInterviewCtr/addJobInterviewForm">Add New Job Interview</a>
</div>

</div>
</body>
</html>