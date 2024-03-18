<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html> 
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link href='https://unpkg.com/css.gg@2.0.0/icons/css/log-out.css' rel='stylesheet'>
    <link href='https://unpkg.com/css.gg@2.0.0/icons/css/user.css' rel='stylesheet'>
    <link href='https://unpkg.com/css.gg@2.0.0/icons/css/home.css' rel='stylesheet'>
    <link href='https://unpkg.com/css.gg@2.0.0/icons/css/pen.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Header</title>
</head>
    <style>
        /* Stile per l'header fisso */
        header {
            background-color: #3498db;
            padding: 10px;
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
           justify-content: space-between; /* Allinea a sinistra e a destra */
           /* align-items: center;*/ 
        }

        .nav-link {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            background-color: #2c3e50;
            border-radius: 5px;
            display: flex;
            align-items: center; 
            padding: 7px 20px;
            margin-right: 30px; /* Aggiunto margine a destra per separare i link */
           /* margin-left: 10px; */
        }

        .nav-link:hover {
            background-color: #ddd;
            color: black;
        }

        .nav-link i {
            font-size: 30px;
            margin-right: 15px; /* Aggiunto margine a destra per separare l'icona dal testo */
        }
        
        
        
       
#session-info {
    position: relative; 
    cursor: pointer;
} 

#user-popup {
    display: none;
    position: absolute;
    top: 100%; 
    left: 50%; 
    transform: translateX(-50%);
    z-index: 1;
    background-color: #3498db;
    border: 1px solid #ddd;
    padding: 10px;
    width: max-content;
    color: #fff; /* Colore del testo bianco */
  
    } 
    

    </style>

    <header>
        <!-- Bottone Home -->
        <a href="${pageContext.request.contextPath}/home" class="nav-link">
            <i class="gg-home"></i>
            <span>Home</span>
        </a>
        
        
        
        
   <div id="user-container">
    <!-- Bottone User -->
    <div id="session-info" class="nav-link">
        <i class="gg-user"></i>
        <span>User: ${utente.name} ${utente.surname}</span>
    </div>

    <!-- Popup Modifica Dati -->
    <div id="user-popup">
        <p>Cognome: ${utente.surname}</p>
        <p>Nome: ${utente.name}</p>
        <p>Email: ${utente.email}</p>
        <p>Username: ${utente.username}</p>
         <p>Livello: ${utente.employeeType.description}</p>

        <a href="${pageContext.request.contextPath}/EmployeeCtr/aggiornaEmployeePerId?idEmployee=${utente.idEmployee}" id="modifica-dati" class="nav-link">
           <i class="gg-pen"></i>
            <span>Visualizza/Modifica Dati</span>
        </a>
    </div>
</div>

        
        
        
        
        
        
        
        
        
        
   
        <!-- Bottone Logout -->
        <a href="${pageContext.request.contextPath}/gestionale/logout" id="logout-link" class="nav-link">
            <i class="gg-log-out"></i>
            <span>Logout</span>
        </a>
        
        




          </header>
 


<script>
    var userContainer = document.getElementById("user-container");
    var userPopup = document.getElementById("user-popup");

    userContainer.addEventListener("click", function (event) {
        event.stopPropagation(); // Evita la chiusura immediata del popup al click su user-popup
        userPopup.style.display = (userPopup.style.display === "block") ? "none" : "block";
    });

    document.body.addEventListener("click", function () {
        userPopup.style.display = "none"; // Chiudi il popup se clicchi fuori da user-container
    });
</script>

      
   
  
</body>
</html>