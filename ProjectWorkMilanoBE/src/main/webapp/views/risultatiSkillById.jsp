<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Skill"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Skill By ID :</title>
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
    <h1>SKILL</h1>
    <h2>SKILL BY ID: RESULTS! </h2>

    <table>
        <thead>
            <tr>
                <th>Id Skill</th>
                <th>Title</th>
                <th>Description</th>
             
            </tr>
        </thead>
        <tbody>
        
        <%Skill sList = (Skill) request.getAttribute("sList");%>
		<tr>
		
			<td><%=sList.getIdSkill()%></td>
			<td><%=sList.getTitle()%></td>
			<td><%=sList.getDescription()%></td>

<td><a href="${pageContext.request.contextPath}/skill/updateSkillForm?idSkill=${sList.idSkill}"><button>Update</button></a></td>
 <td><a href="${pageContext.request.contextPath}/skill/delete?idSkill=${sList.idSkill}"><button>Delete</button></a></td>
               

			
</tr>
 
        </tbody>
    </table>    

</div>
</body>
</html>
