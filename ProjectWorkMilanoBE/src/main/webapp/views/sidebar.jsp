<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sidebar</title>
<style>

/* Fixed sidenav, full height */
.sidenav {
  height: 100%;
  width: 0; /* Imposta la larghezza iniziale a 0 */
  position: fixed;
  z-index: 1;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
  transition: 0.5s; /* Aggiungi una transizione per animare l'apertura e la chiusura */
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  border: none;
  background: none;
  width:100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
  color: #f1f1f1;
}

/* Main content */
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
  background-color: green;
  color: white;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container, .dropdown-container2 {
  display: none;
  background-color: #262626;
  padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
  float: right;
  padding-right: 8px;
}
  .closebtn {
    top: 10px;
    right: 0;
    font-size: 24px;
  }
</style>

</head>
<body>

<div class="sidenav" id="mySidenav">
 <a href="javascript:void(0)" class="closebtn" onclick="toggleNav()">&times;</a> <!-- Icona "x" per chiudere la sidebar/sidenav -->
  <a href="#about">Candidati</a>
  <a href="#services">Aziende</a>
  <a href="#clients">Colloqui</a>
  <a href="#contact">Educazione</a>
  <!-- Aggiungi un ID al pulsante "Dropdown" per identificarlo facilmente con JavaScript -->
 
 
 
  <button id="dropdownBtn" class="dropdown-btn">Contratti
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="#">Tipi di contratti</a>
    <a href="#">Aggiungi nuovo contratto</a>
    <a href="#">Boh qualcosa</a>
  </div>
  
    <button id="dropdownBtn2" class="dropdown-btn">Altro menu a tendina
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container2">
    <a href="#">Tendina 1</a>
    <a href="#">2</a>
    <a href="#">3</a>
  </div>
  
  <a href="#contact">Stato candidature</a>
</div>

<script>
// Ottieni il riferimento al pulsante "Dropdown"
var dropdownBtn = document.getElementById("dropdownBtn");
var dropdownBtn2 = document.getElementById("dropdownBtn2");

// Aggiungi un gestore di eventi al clic sul pulsante "Dropdown"
dropdownBtn.addEventListener("click", function() {
  // Ottieni il riferimento al dropdown container
  var dropdownContainer = document.querySelector(".dropdown-container");

  // Controlla se il dropdown container è attualmente visibile
  if (dropdownContainer.style.display === "block") {
    // Se è visibile, nascondilo
    dropdownContainer.style.display = "none";
  } else {
    // Altrimenti, mostralo
    dropdownContainer.style.display = "block";
  }
});



//Aggiungi un gestore di eventi al clic sul pulsante "Dropdown"
dropdownBtn2.addEventListener("click", function() {
  // Ottieni il riferimento al dropdown container
  var dropdownContainer2 = document.querySelector(".dropdown-container2");

  // Controlla se il dropdown container è attualmente visibile
  if (dropdownContainer2.style.display === "block") {
    // Se è visibile, nascondilo
    dropdownContainer2.style.display = "none";
  } else {
    // Altrimenti, mostralo
    dropdownContainer2.style.display = "block";
  }
});
</script>

</body>
</html>