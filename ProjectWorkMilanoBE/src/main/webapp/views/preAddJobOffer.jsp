<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Job Offer</title>
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
<h1>JOB OFFER</h1>  
<h2>Add new Job Offer</h2>

<form action="${pageContext.request.contextPath}/JobOfferCtr/preAddJobOffer" method="post">

		<label for="title">Title:</label>
		<br>
		<input type="text" id="title" name="title">
		<br>
		
		<label for="description">Description:</label>
		<br>
		<input type="text" id="description" name="description">
		<br>
		
		<label for="startDate">StartDate:</label>
		<br>
		<input type="date" id="startDate" name="startDate">
		<br>

		<label for="endDate">EndDate:</label>
		<br>
		<input type="date" id="endDate" name="endDate">
		<br>
		
		<label for="idCompanyClient">idCompanyClient:</label>
		<br>
		<input type="number" id="idCompanyClient" name="companyClient.idCompanyClient">
		<br>
		
		<label for="minRal">minRal:</label>
		<br>
		<input type="number" id="minRal" name="minRal">
		<br>

		<label for="maxRal">MaxRal:</label>
		<br>
		<input type="number" id="maxRal" name="maxRal">
		<br>
		
		<label for="idContractType">idContractType:</label>
		<br>
		<input type="number" id="idContractType" name="contractType.idContractType">
		<br>
		
		<br>
		<label for="tipoOperazione">Operation Type:</label>
		<br>
		<input type="text" id="tipo_operazione" name="tipo_operazione">
		<br>

 		<br>
		<input type="submit" value="Invia">
	</form>
	</div>
</body>
</html>