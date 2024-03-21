<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page import= "com.model.CandidateCommercialData"%>
     <%@page import= "com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AGGIORNA I DATI COMMERCIALI DEL CANDIDATO</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin: 10px;
}
body {
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        margin: 0;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    }

    .container {
        background: white;
        padding: 20px;
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

<p><a href="http://localhost:8080/home">TORNA ALLA HOME!</a></p>
</div>
</body>
</html>