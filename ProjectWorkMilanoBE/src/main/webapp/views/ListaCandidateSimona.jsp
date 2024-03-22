<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LIST CANDIDATE</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin: 10px;
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
  color: black; /* colore del testo */
  text-decoration: underline; /* rimuove il sottolineato di default */
  transition: color 0.3s ease;
  border-radius: 10px; /* animazione del cambio di colore */
}

a:hover {
  color: white;
  background-color: #f7308c; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
<div class="container">
<h1>THIS IS THE UPDATE CANDIDATE LIST</h1> 
<h2>with new candidate</h2> 

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

<p><a href="http://localhost:8080/home">GO HOME!</a></p>
</div>
</body>
</html>