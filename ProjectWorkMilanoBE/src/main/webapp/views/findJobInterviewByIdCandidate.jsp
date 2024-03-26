<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIND JOB INTERVIEW BY ID CANDIDATE</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 1px;
    margin: 1px;
}
body {
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        margin: 0;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    }

    .container {
        background: white;
        padding: 20px;
        border-radius: 10px;      
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
  top: 30%;
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
  padding: 8px;
  text-align: left;
}
th {
  background-color: #f2f2f2;
}

a {
    color:black;
    position: absolute;
    top: 80%;
    left:50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  padding: 15px;
}
a:hover {
  color: white;
  background-color: black; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
<div class="container">

<h1>JOB INTERVIEW</h1>
<h2>This is Candidate's job interview</h2>
<table>
<thead>
            <tr>
                <th>ID JOB INTERVIEW</th>
                <th>ID CANDIDATE</th>
                <th>DATE</th>
                <th>ID STATE JOB INTERVIEW</th>
                <th>OUTCOME</th>
                <th>NOTES</th>
                <th>ID EMPLOYEE</th>               
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
        </thead>
  <tbody>
            <c:forEach var="jobInterview" items="${LISTAji}">
                <tr>
                   <td><c:out value="${jobInterview.idJobInterview}" /></td>
                    <td><c:out value="${jobInterview.candidate.idCandidate}" /></td>
                    <td><c:out value="${jobInterview.date}" /></td>
                    <td><c:out value="${jobInterview.stateJobInterview.idStateJobInterview}" /></td>
                    <td><c:out value="${jobInterview.outcome}" /></td>
                    <td><c:out value="${jobInterview.notes}" /></td>
                    <td><c:out value="${jobInterview.employee.idEmployee}" /></td>
                    
                    <td><form action="${pageContext.request.contextPath}/JobInterviewCtr/delete" method="get">
					    <input type="hidden" name="idJobInterview" value="${jobInterview.idJobInterview}">
					    <button type="submit">DELETE</button>
						</form></td>

					<td><form action="${pageContext.request.contextPath}/JobInterviewCtr/updateJobInterviewForm" method="get">
					    <input type="hidden" name="idJobInterview" value="${jobInterview.idJobInterview}">
					    <button type="submit">UPDATE</button>
						</form></td>
					        </tr>					 
            </c:forEach>
        </tbody>
 
</table>

<p><a href="http://localhost:8080/home">GO HOME!</a></p>
</div>
</body>
</html>