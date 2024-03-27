<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
     <h1>Update your data:</h1>

    <!-- Form per la modifica dati -->
    <form action="${pageContext.request.contextPath}/EmployeeCtr/aggiornaEmployeePerId" method="post">
        <!-- Campi di input per i dati modificabili -->
        <label for="idEmployee">ID:</label>
        <input type="number" id="idEmployee" name="idEmployee" value="${utente.idEmployee}" readonly>
        
        <label for="surname">Cognome:</label>
        <input type="text" id="surname" name="surname" value="${utente.surname}" required>
        
        <label for="name">Nome:</label>
        <input type="text" id="name" name="name" value="${utente.name}" required>
        
        <br>
        
         <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${utente.username}" required>
        
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="${utente.email}" required>
       
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value="${utente.password}" required>
        
        <br>
        
      <label for="employeeType">Livello:</label>
<select id="employeeType" name="employeeType" required>
    <c:forEach var="type" items="${lista}">
        <option value="${type.idEmployeeType}">${type.description}</option>
    </c:forEach>
</select>



        <button type="submit">Conferma Modifiche</button>
    </form>
    
</div>
</body>
</html>