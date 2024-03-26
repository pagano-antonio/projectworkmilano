<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Education"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Education Data</title>
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
<h1>EDUCATION</h1> 
	<h2>Update Education Data:</h2>
	
	<%Education ed = (Education) request.getAttribute("idEducation");%>
	
	<form action="${pageContext.request.contextPath}/EducationCtr/updateEducation" method="Post">
		<label for="idEducation">Education ID:</label>
		<br>
		<input readonly type="number" id="idEducation" name="idEducation" value="<%=ed.getIdEducation()%>">
		<br>
		<label for="idEducationDegreeType">Education Degree Type:</label>
		<br>
		<select name="educationDegreeType.idEducationDegreeType" id="educationDegreeType">
			<c:forEach var="edt" items="${EDTlist}">
					<option value="${edt.idEducationDegreeType}">${edt.description}</option>
			</c:forEach>
		</select>
		<br>
		<label for="idCandidate">Candidate:</label>
		<br>
		<select name="candidate.idCandidate" id="idCandidate">
			<c:forEach var="candidate" items="${candidateList}">
				<option value="${candidate.idCandidate}">${candidate.name} ${candidate.surname}</option>
			</c:forEach>
		</select>		
		<br>
		<label for="schoolName">School Name:</label>
		<br>
		<input type="text" id="schoolName" name="schoolName" value="<%=ed.getSchoolName()%>">
		<br>
		<label for="place">School Place:</label>
		<br>
		<input type="text" id="place" name="place" value="<%=ed.getPlace()%>">
		<br>
		<label for="date">Graduation Date:</label>
		<br>
		<input type="date" id="date" name="date" value="<%=ed.getDate()%>">
		<br>
		<label for="finalGrade">Final Grade:</label>
		<br>
		<input type="text" id="finalGrade" name="finalGrade" value="<%=ed.getFinalGrade()%>">
		<br>
		<input type="submit" value="Update Contract Type Data">
	</form>
	</div>
</body>
</html>