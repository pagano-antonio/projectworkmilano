<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page import= "com.model.CandidateCommercialData"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AGGIORNA I DATI COMMERCIALI DEL CANDIDATO</title>
</head>
<body>

<% CandidateCommercialData ccd =(CandidateCommercialData)request.getAttribute("CandidateCommercialData");
   //casting non sicuro %>
   <div>                                                                                                                                                  </div> 

<form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/updateCandidateCommercialData" method="post">

						<h2>UPDATE CandidateCommercialData!</h2>
   
   <label for="idCandidateCommercial">idCandidateCommercial</label><br>
  <input readonly id="idCandidateCommercial" name="idCandidateCommercial" value="<% out.print(ccd.getIdCandidateCommercial()); %>"><br>
  
  <label for="candidate">idCandidate</label><br>
  <input readonly id="candidate" name="candidate" value="<% out.print(ccd.getCandidate().getIdCandidate()); %>"><br>
  
  <label for="currentRal">currentRal:</label><br>
  <input type="text" id="currentRal" name="currentRal"value="<% out.print(ccd.getCurrentRal()); %>"><br>
  
  <label for="proposedRal">proposedRal:</label><br>
  <input type="text" id="proposedRal" name="proposedRal"value="<% out.print(ccd.getProposedRal()); %>"><br>
      
  <label for="monthRefund">monthRefund:</label><br>
  <input type="number" id="monthRefund" name="monthRefund"value="<% out.print(ccd.getMonthRefund()); %>"><br>
  
  <label for="businessCost">businessCost:</label><br>
  <input type="text" id="businessCost" name="businessCost" value="<% out.print(ccd.getBusinessCost()); %>"><br>
  
  <label for="subsidyFlag">subsidyFlag:</label><br>
  <input type="text" id="subsidyFlag" name="subsidyFlag"value="<% out.print(ccd.getSubsidyFlag()); %>"><br>
  
  <label for="notes">notes:</label><br>
  <input type="text" id="notes" name="notes"value="<% out.print(ccd.getNotes()); %>"> <br>   
  
  <input type="submit" value="Submit">
</form>

<p><a href="http://localhost:8080/home">TORNA ALLA HOME!</a></p>

</body>
</html>