<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.model.Employee"%>
<!DOCTYPE html> 
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Employee Data</title>
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
  top: 80%;
<<<<<<< Updated upstream
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  border-radius: 10px;
  z-index: 9999; 
}

 H3 {
  position: absolute; 
  top: 83%;
=======
>>>>>>> Stashed changes
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
  a {
  	color: white;
  }
</style>
</head>
<body>
<div class="container">
     <h1>Update employee data:</h1>
     
     

    <!-- Form per la modifica dati -->
    <form action="${pageContext.request.contextPath}/EmployeeCtr/aggiornaEmployeePerId" method="post">
        <!-- Campi di input per i dati modificabili -->
        <label for="idEmployee">ID:</label>
        <input type="number" id="idEmployee" name="idEmployee" value="${employee.idEmployee}" readonly>
        <br>
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname" value="${employee.surname}" required>
        <br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${employee.name}" required>
        
        <br>
        
         <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${employee.username}" required>
        <br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="${employee.email}" required>
       <br>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value="${employee.password}" required>
        
        <br>
        
<label for="employeeType">Level:</label>
<select id="employeeType" name="employeeType" required disabled>
    <c:forEach var="type" items="${lista}">
        <c:choose>
            <c:when test="${type.idEmployeeType eq employee.employeeType.idEmployeeType}">
                <option value="${type.idEmployeeType}" selected>${type.description}</option>
            </c:when>
            <c:otherwise>
                <option value="${type.idEmployeeType}">${type.description}</option>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</select>

<br>

        <button type="submit">Save changes</button>
    </form>
   
</div>

<script>
    var userRole = "${utente.employeeType.description}"; // Ottieni il ruolo dell'utente dalla sessione

    // Verifica se l'utente è HR Manager e abilita/disabilita il campo di selezione
    if (userRole === "HR Manager") {
        document.getElementById("employeeType").removeAttribute("disabled");
    } else {
        document.getElementById("employeeType").setAttribute("disabled", "disabled");
    }
</script>

<% Employee utente = (Employee) session.getAttribute("utente"); %>
<% if (utente != null && utente.getEmployeeType().getDescription().equals("HR Manager")) { %>
    <h2><a href="${pageContext.request.contextPath}/EmployeeCtr/seeallEmployees">See all Employees</a></h2>
<<<<<<< Updated upstream
    <h3><a href="${pageContext.request.contextPath}/EmployeeCtr/preInserimento">Add new Employee</a></h3>
=======
    <h2><a href="${pageContext.request.contextPath}/EmployeeCtr/preInserimento">Add new Employee</a></h2>
>>>>>>> Stashed changes
<% } %>

</body>
</html>