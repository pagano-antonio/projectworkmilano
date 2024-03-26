<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Education"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Education Data</title>
  <style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 4px;
    margin: 4px;
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

        justify-content: center;      
        align-items: center;
        background: white;
        padding: 1px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
  H1 {
  position: absolute;
  top: 10%;
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
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
a {
    color:black;
    position: absolute;
    top: 80%;
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
	
		<a href="${pageContext.request.contextPath}/home"><strong>GO HOME</strong></a>
</body>
</html>