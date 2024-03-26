<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Skill"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Skill By ID Candidate:</title>
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

<h1>SKILL</h1>
<h2>This is Candidate's skill</h2>

    <table>
        <thead>
            <tr>
                <th>Id Skill</th>
                <th>Title</th>
                <th>Description</th>
                <th>Actions</th>
              
            </tr>
        </thead>
        <tbody>
            <c:forEach var="sList" items="${sList}">
                <tr>
                    <td>${sList.idSkill}</td>
                    <td>${sList.title}</td>
                    <td>${sList.description}</td>                
                    <td>
                    
              <form action="${pageContext.request.contextPath}/skill/preAggiornaSkill" method="Get">
     <input type="hidden" name="idSkill" value="${sLista.idSkill}">
  <button type="submit">UPDATE</button>
  
              <form action="${pageContext.request.contextPath}/skill/preEliminaSkill" method="Get">
    		<input type="hidden" name="idSkill" value="${sList.idSkill}">
    <button type="submit">DELETE</button>
			</form>                       
      
  </form></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>    
    </div>
        <a href="${pageContext.request.contextPath}/home"><strong>GO HOME</strong></a>
</body>
</html>
