<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIND EDUCATION BY ID CANDIDATE</title>
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
<h2>This is EDUCATION</h2>
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
                <th>ACTIONS</th>
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
                    <td>
               <form action="${pageContext.request.contextPath}/EducationCtr/deleteEducation" method="Get">
    		<input type="hidden" name="idEducation" value="${education.idEducation}">
    <button type="submit">DELETE</button>
			</form>                        
   <form action="${pageContext.request.contextPath}/EducationCtr/preUpdateEducationForm" method="Get">
      <input type="hidden" name="idEducation" value="${education.idEducation}">
      <button type="submit">UPDATE</button>
       </form>
   </td>                       
                </tr>
            </c:forEach>
        </tbody>
 
</table>
</div>
</body>
</html>