<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Candidate By id LIST</title>
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
<h1>THIS IS CANDIDATE</h1> 
<h2>Select ACTION for more DETAILS</h2> 

<table>
<thead>
    <tr>
        <th>ID CANDIDATE</th>
        <th>NAME</th>
        <th>SURNAME</th>
        <th>BIRTHDAY</th>
        <th>BIRTHPLACE</th>
        <th>ADDRESS</th>
        <th>CITY</th>
        <th>EMAIL</th>
        <th>PHONE</th> 
        <th>ACTIONS</th>                                              
    </tr>
</thead>
<tbody>
<%
    // Ottieni l'oggetto candidate dall'attributo della richiesta
    Candidate candidate = (Candidate) request.getAttribute("candidate");
%>
    <tr>                   
        <td><%= candidate.getIdCandidate() %></td>
        <td><%= candidate.getName() %></td>
        <td><%= candidate.getSurname() %></td>
        <td><%= candidate.getBirthday() %></td>
        <td><%= candidate.getBirthPlace() %></td>
        <td><%= candidate.getAddress() %></td>
        <td><%= candidate.getCity() %></td>
        <td><%= candidate.getEmail() %></td>
        <td><%= candidate.getPhone() %></td>
        <td>
         <form action="${pageContext.request.contextPath}/candidate/updateCandidateForm" method="Get">
    		<input type="hidden" name="idCandidate" value="${candidate.idCandidate}">
    <button type="submit">UPDATE</button>
			</form>
                        
   <form action="${pageContext.request.contextPath}/candidate/delete" method="Get">
      <input type="hidden" name="idCandidate" value="${candidate.idCandidate}">
      <button type="submit">DELETE</button>
       </form>
        
	 <form action="${pageContext.request.contextPath}/skill/ricercaSkillPerIdCandidate" method="Get">
        <input type="hidden" name="idCandidate" value="${candidate.idCandidate}">
        <button type="submit">SKILLS</button>
    </form>
    
     <form action="${pageContext.request.contextPath}/JobInterviewCtr/findJobInterviewByIdCandidate" method="Post">
    <input type="hidden" name="idCandidate" value="${candidate.idCandidate}">
    <button type="submit">JOB INTERVIEW</button>
</form>

<form action="${pageContext.request.contextPath}/EducationCtr/findEducationByIdCandidate" method="Post">
    <input type="hidden" name="idCandidate" value="${candidate.idCandidate}">
    <button type="submit">EDUCATION</button>
</form>

<form action="${pageContext.request.contextPath}/wk/ricercaWEPerIdCandidate" method="Post">
    <input type="hidden" name="idCandidate" value="${candidate.idCandidate}">
    <button type="submit">WORK EXPERIENCE</button>
</form></td>
        </tr>
   
</tbody>
</table>
</div>
    <!-- Pulsante "GO HOME!" in basso -->
    <p class="go-home"><a href="http://localhost:8080/home"><strong>GO HOME!</strong></a></p>

</body>
</html>