<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LIST CANDIDATE</title>
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
<h1>THIS IS THE UPDATE CANDIDATE LIST</h1> 
<h2>The candidate has been added!</h2> 

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
            </tr>
        </thead>
  <tbody>
            <c:forEach var="candidate" items="${LISTAc}">
                <tr>                   
                    <td><c:out value="${candidate.idCandidate}" /></td>
                    <td><c:out value="${candidate.name}" /></td>
                    <td><c:out value="${candidate.surname}" /></td>
                    <td><c:out value="${candidate.birthday}" /></td>
                    <td><c:out value="${candidate.birthPlace}" /></td>
                    <td><c:out value="${candidate.address}" /></td>
                    <td><c:out value="${candidate.city}" /></td>
                    <td><c:out value="${candidate.email}" /></td>
                    <td><c:out value="${candidate.phone}" /></td>
                    </tr>
            </c:forEach>
        </tbody>
 
</table>
</div>
</body>
</html>