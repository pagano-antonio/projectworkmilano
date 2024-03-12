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
        <label for="nome">ID:</label>
        <input type="text" id="nome" name="nome" value="${utente.idEmployee}" readonly>
        
        <label for="nome">Cognome:</label>
        <input type="text" id="nome" name="nome" value="${utente.surname}" required>
        
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${utente.name}" required>
        
        <br>
        
         <label for="nome">Username:</label>
        <input type="text" id="nome" name="nome" value="${utente.username}" required>
        
        <label for="nome">Email:</label>
        <input type="text" id="nome" name="nome" value="${utente.email}" required>
       
        <label for="nome">Password:</label>
        <input type="text" id="nome" name="nome" value="${utente.password}" required>
        
        <br>
        
      <label for="employeeType">Livello:</label>
<select id="employeeType" name="employeeType" required>
    <c:forEach var="type" items="${lista}">
        <option value="${type}">${type.description}</option>
    </c:forEach>
</select>



        <button type="submit">Conferma Modifiche</button>
    </form>
</body>
</html>