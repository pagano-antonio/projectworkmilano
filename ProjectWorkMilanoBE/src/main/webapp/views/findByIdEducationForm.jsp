<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Education by ID</title>
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
</style>
</head>
<body>
 <div class="container">
<h1>EDUCATION</h1>
	<h2>Insert the Education ID to get your results:</h2>
	
	<form action="${pageContext.request.contextPath}/EducationCtr/findByIdEducation">
		<label for="idEducation">Education ID:</label>
		<br>
		<input type="number" id="idEducation" name="idEducation">
		<br>
		<input type="submit" value="Find Education">
	</form>
	
</div>
</body>
</html>