<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page import= "com.model.CandidateCommercialData"%>
     <%@page import= "com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AGGIORNA I DATI COMMERCIALI DEL CANDIDATO</title>
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
<h1>UPDATE CANDIDATE COMMERCIAL DATA</h1>

<% CandidateCommercialData ccd =(CandidateCommercialData)request.getAttribute("CandidateCommercialData");
   //casting non sicuro %>

<form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/updateCandidateCommercialData" method="post">
						
   
   <label for="idCandidateCommercial"><strong>idCandidateCommercial</strong></label>
  <input readonly id="idCandidateCommercial" name="idCandidateCommercial" value="<% out.print(ccd.getIdCandidateCommercial()); %>"><br>
  
  <label for="candidate"><strong>idCandidate</strong></label>
  <input readonly id="candidate" name="candidate" value="<% out.print(ccd.getCandidate().getIdCandidate()); %>"><br>
  
  <label for="currentRal"><strong>currentRal:</strong></label>
  <input type="text" id="currentRal" name="currentRal"value="<% out.print(ccd.getCurrentRal()); %>"><br>
  
  <label for="proposedRal"><strong>proposedRal:</strong></label>
  <input type="text" id="proposedRal" name="proposedRal"value="<% out.print(ccd.getProposedRal()); %>"><br>
      
  <label for="monthRefund"><strong>monthRefund:</strong></label>
  <input type="number" id="monthRefund" name="monthRefund"value="<% out.print(ccd.getMonthRefund()); %>"><br>
  
  <label for="businessCost"><strong>businessCost:</strong></label>
  <input type="text" id="businessCost" name="businessCost" value="<% out.print(ccd.getBusinessCost()); %>"><br>
  
  <label for="subsidyFlag"><strong>subsidyFlag:</strong></label>
  <input type="text" id="subsidyFlag" name="subsidyFlag"value="<% out.print(ccd.getSubsidyFlag()); %>"><br>
  
  <label for="notes"><strong>notes:</strong></label>
  <input type="text" id="notes" name="notes"value="<% out.print(ccd.getNotes()); %>"> <br>   
  
  <label for="notes"><strong>If you have added all the information correctly, CLICK HERE</strong></label>
  <input type="submit" value="Submit">
</form>
</div>
</body>
</html>