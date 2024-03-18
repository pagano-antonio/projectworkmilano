<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modifica Dati</title>
</head>
<body>
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
</body>
</html>