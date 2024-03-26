<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.WorkExperience"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Work Experience</title>
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
  position: relative; 
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

<h1>WORK EXPERIENCE</h1>
<h2>This is Candidate's work experience</h2>

<table>
    <thead>
        <tr>
            <th>Id Work Experience</th>
            <th>Id Candidate</th>
            <th>Title</th>
            <th>Description</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Company</th>
            <th>City</th>
            <th>Actions</th> 
        </tr>
    </thead>
    <tbody>
        <c:forEach var="workExperience" items="${workExperienceList}">
            <tr>
                <td>${workExperience.idWorkExperience}</td>
                <td>${workExperience.candidate.idCandidate}</td>
                <td>${workExperience.title}</td>
                <td>${workExperience.description}</td>
                <td>${workExperience.startDate}</td>
                <td>${workExperience.endDate}</td>
                <td>${workExperience.company}</td>
                <td>${workExperience.city}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/wk/preUpdateWork" method="Get">
                        <input type="hidden" name="idWorkExperience" value="${workExperience.idWorkExperience}">
                        <button type="submit">UPDATE</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/wk/deleteWork" method="Get">
                        <input type="hidden" name="idWorkExperience" value="${workExperience.idWorkExperience}">
                        <button type="submit">DELETE</button>
                    </form>                 
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<a href="${pageContext.request.contextPath}/home">GO HOME</a>
</div>
</body>
</html>
