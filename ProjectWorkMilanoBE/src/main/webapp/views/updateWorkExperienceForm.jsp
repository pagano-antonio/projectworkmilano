<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.WorkExperience"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Work Experience</title>
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
label {
    font-weight: bold; /* Rende il testo in grassetto */
    color: #333; /* Colore del testo */
    margin-right: 10px; /* Spazio a destra del label */
  }

  /* Stile per l'input text */
  input[type="text"] {
    padding: 5px; /* Spazio interno dell'input */
    border: 1px solid #ccc; /* Bordo grigio */
    border-radius: 3px; /* Bordi arrotondati */
    font-size: 14px; /* Dimensione del testo */
  }
input[type="number"] {
    padding: 5px; /* Spazio interno dell'input */
    border: 1px solid #ccc; /* Bordo grigio */
    border-radius: 3px; /* Bordi arrotondati */
    font-size: 14px; /* Dimensione del testo */
  }
  /* Stile per il break */
  br {
    margin-bottom: 10px; /* Spazio sotto il break */
  }
  button[type="submit"] {
        margin-top: 20px; /* Adjust as needed */
        margin-left:50px;
        width: 150px; /* Adjust as needed */
    }
</style>
</head>
<body>
<div class="container">
<h1>WORK EXPERIENCE</h1> 

	<h1>Update Work Experience</h1>

	<form action="${pageContext.request.contextPath}/wk/updateWork" method="post">
		
	<c:set var="wk" value="${WorkExperience}" />
	
		<label for="idWorkExperience">Id Work Experience:</label>
		<br>
		<input readonly type="number" id="idWorkExperience" name="idWorkExperience" value="${wk.idWorkExperience}">		
		<br>		
		<label for="candidate">Seleziona un candidato:</label>	
           <select id="candidate" name="candidate">
			 <c:forEach items="${candidates}" var="candidate">
                   <option value="${candidate.idCandidate}">
                       ${candidate.name} ${candidate.surname}
                   </option>
               </c:forEach>
           </select>
		<br>
		<label for="title">Title</label>
		<br>
		<input type="text" id="title" name="title" value="${wk.title}">
		<br>
		<label for="description">Description</label>
		<br>
		<input type="text" id="description" name="description" value="${wk.description}">
		<br>
		<label for="startDate">Start Date</label>
		<br>
		<input type="date" id="startDate" name="startDate" value="${wk.startDate}">
		<br>
		<label for="endDate">End Date</label>
		<br>
		<input type="date" id="endDate" name="endDate" value="${wk.endDate}">
		<br>
		<label for="company">Company</label>
		<br>
		<input type="text" id="company" name="company" value="${wk.company}">
		<br>
		<label for="city">City</label>
		<br>
		<input type="text" id="city" name="city" value="${wk.city}">
		<br>
		<input type="submit" value="Update">
	</form>
	</div>
</body>
</html>