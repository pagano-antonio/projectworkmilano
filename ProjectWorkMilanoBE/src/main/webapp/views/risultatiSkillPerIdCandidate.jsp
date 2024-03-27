<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Skill"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Find Skill By ID Candidate - Results</title>
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
    padding: 20px;
    margin: 20px;
    }

    .container {
font-family: Century Gothic;
        justify-content: center;      
        align-items: center;
        background: white;
        padding: 20px;
    margin: 20px;
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
<h2>Candidate's skill by id candidate: results!</h2>

    <table>
        <thead>
            <tr>
                <th>Id Skill</th>
                <th>Title</th>
                <th>Description</th>
                <th>UPDATE</th>
                <th>DELETE</th>
              
            </tr>
        </thead>
        <tbody>
            <c:forEach var="sList" items="${sList}">
                <tr>
                    <td>${sList.idSkill}</td>
                    <td>${sList.title}</td>
                    <td>${sList.description}</td>                


 <td><a href="${pageContext.request.contextPath}/skill/updateSkillForm?idSkill=${sList.idSkill}"><button>Update</button></a></td>
<td><a href="${pageContext.request.contextPath}/skill/delete?idSkill=${sList.idSkill}"><button>Delete</button></a></td>                   

                </tr>
                
            </c:forEach>
        </tbody>
    </table>    
    </div>
</body>
</html>
