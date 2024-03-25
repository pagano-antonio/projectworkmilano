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
    padding: 10px;
    margin: 10px;
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

</style>
</head>
<body>
<div class="container">
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
                    <td><a href="${pageContext.request.contextPath}/JobInterviewCtr/delete?idJobInterview=${jobInterview.idJobInterview}">delete</a></td>
                    <td><a href="${pageContext.request.contextPath}/JobInterviewCtr/updateJobInterviewForm?idJobInterview=${jobInterview.idJobInterview}">update</a></td>
                </tr>
            </c:forEach>
        </tbody>
 
</table>

<p><a href="http://localhost:8080/home">GO HOME!</a></p>
</div>
</body>
</html>