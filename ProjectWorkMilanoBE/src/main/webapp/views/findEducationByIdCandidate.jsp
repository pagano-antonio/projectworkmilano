<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIND EDUCATION BY ID CANDIDATE</title>
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
<h1>EDUCATION</h1>
<h2>This is Candidate's education</h2>
<table>
<thead>
            <tr>
                <th>ID EDUCATION</th>
                <th>ID EUCATION DEGREE TYPE</th>
                <th>SCHOOL NAME</th>
                <th>PLACE</th>
                <th>DATE</th>
                <th>FINAL GRADE</th>
                <th>ID CANDIDATE</th>               
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
        </thead>
  <tbody>
            <c:forEach var="education" items="${LISTA}">
                <tr>
                   <td><c:out value="${education.idEducation}" /></td>
                    <td><c:out value="${education.educationDegreeType.idEducationDegreeType}" /></td>
                    <td><c:out value="${education.schoolName}" /></td>
                    <td><c:out value="${education.place}" /></td>
                    <td><c:out value="${education.date}" /></td>
                    <td><c:out value="${education.finalGrade}" /></td>
                  <td><c:out value="${education.candidate.idCandidate}" /></td>
                  <td><a href="${pageContext.request.contextPath}/EducationCtr/deleteEducation?idEducation=${education.idEducation}">delete</a></td>
                    <td><a href="${pageContext.request.contextPath}/EducationCtr/preUpdateEducationForm?idEducation=${education.idEducation}">update</a></td> 
                </tr>
            </c:forEach>
        </tbody>
 
</table>

<p><a href="http://localhost:8080/home">GO HOME!</a></p>
</div>
</body>
</html>