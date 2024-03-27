<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.model.Employee"%>
<!DOCTYPE html> 
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update DATA</title>
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
        <h1>Employee Data</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Surname</th>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Level</th>
                    <th>Changes</th>
                   
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cicci" items="${lista}">
                    <tr>
                        <td>${cicci.idEmployee}</td>
                        <td>${cicci.surname}</td>
                        <td>${cicci.name}</td>
                        <td>${cicci.username}</td>
                        <td>${cicci.email}</td>
                        <td>${cicci.password}</td>
                        <td>${cicci.employeeType.description}</td>
                        <td> 
                        <a href="${pageContext.request.contextPath}/EmployeeCtr/aggiornaEmployeePerId?idEmployee=${cicci.idEmployee}"><button>Update</button></a>
                        <a href="${pageContext.request.contextPath}/EmployeeCtr/eliminaEmployeePerId?idEmployee=${cicci.idEmployee}"><button>Delete</button></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <h2><a href="${pageContext.request.contextPath}/EmployeeCtr/preInserimento">Add new Employee</a></h2>
    </div>
</body>
</html>