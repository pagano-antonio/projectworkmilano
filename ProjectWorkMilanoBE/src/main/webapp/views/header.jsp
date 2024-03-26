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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Aggiungi il link per includere Font Awesome -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Header</title>
</head>

<br>
<style>
/* Stile per l'header fisso */
header {
    background-color: #111;
    padding: 10px;
    position: fixed;
    top: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    z-index: 9999; /* Allinea a sinistra e a destra */
}

.nav-link {
    text-decoration: none;
    color: #818181;
    font-size: 20px;
    display: flex;
    align-items: center; /* Allinea verticalmente icone e testo */
    padding: 6px 8px;
    margin-right: 30px; /* Aggiunto margine a destra per separare i link */
    cursor: pointer;
    
}

.nav-link:hover {
    color: #f1f1f1;
    
}

.nav-link i {
    font-size: 20px;
    margin-right: 5px;
    /* Ridotto il margine a destra delle icone */
}

#menu-button {
    text-decoration: none;
    color: #818181;
    font-size: 20px;
    display: flex;
    align-items: center; /* Allinea verticalmente icone e testo */
    padding: 6px 8px;
    cursor: pointer;
    margin-right: 30px;
     /* Aggiunto margine a destra per separare i link */
}

#menu-button:hover {
    color: #f1f1f1;
   
}

#menu-button i {
    font-size: 20px;
    margin-right: 5px;
     /* Ridotto il margine a destra delle icone */
}

.dropdown-container {
    display: none;
    background-color: #262626;
    padding-left: 8px;
    z-index: 9999;
}

.fa-caret-down {
    float: right;
    padding-right: 8px;
    
}

/* Stile per il popup */
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
    z-index: 9999;
    background-color: #111;
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
            <i class="gg-log-out"></i><i></i><i></i>
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

<script>
	function toggleNav() {
		  var sidenav = document.getElementById("mySidenav");
		  if (sidenav.style.width === "0px" || sidenav.style.width === "") {
		    sidenav.style.width = "300px"; // Apri la navbar
		  } else {
		    sidenav.style.width = "0"; // Chiudi la navbar
		  }
		}
</script>

      
   
  
</body>
</html>