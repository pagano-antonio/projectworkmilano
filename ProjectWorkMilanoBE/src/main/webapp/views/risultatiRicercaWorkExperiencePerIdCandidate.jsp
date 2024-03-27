<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.WorkExperience"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Work Experience By ID Candidate - Results</title>
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
<h2>Candidate's work experience: RESULTS!</h2>

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
                    <form action="${pageContext.request.contextPath}/wk/updateWorkExperienceForm" method="Get">
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
</div>
</body>
</html>
