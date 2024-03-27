<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.JobOffer"%>
<%@ page import="com.ctr.JobOfferCtr"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Job Offer</title>
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
  button[type="submit"] {
        margin-top: 20px; /* Adjust as needed */
        margin-left:50px;
        width: 150px; /* Adjust as needed */
    }
</style>
</head>
<body>
<div class="container">
<h1>JOB OFFER</h1> 
	<h2>Update Job Offer:</h2>

<% JobOffer jobOffer = (JobOffer) request.getAttribute("jobOffer"); %>
<form action="${pageContext.request.contextPath}/JobOfferCtr/updateJobOffer" method="post">
    
    <h2>Update Job Offer:</h2>
    
    <label for="idJobOffer">Id JobOffer:</label>
         <input readonly type="number" id="idJobOffer" name="idJobOffer" value="<%= jobOffer.getIdJobOffer() %>">
    
    
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" value="<%= jobOffer.getTitle() %>"> <br>
    
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="<%= jobOffer.getDescription() %>"> <br>
    
    <label for="startDate">Start Date:</label>
    <input type="date" id="startDate" name="startDate" value="<%= jobOffer.getStartDate() %>"> <br>
    
    <label for="endDate">End Date:</label>
    <input type="date" id="endDate" name="endDate" value="<%= jobOffer.getEndDate() %>"> <br>
    
    <label for="idCompanyClient">ID Company Client:</label>
    <input readonly type="number" name="companyClient.idCompanyClient" value="<%= jobOffer.getCompanyClient().getIdCompanyClient() %>">
    
    <label for="minRal">Min Ral:</label>
    <input type="text" id="minRal" name="minRal" value="<%= jobOffer.getMinRal() %>"> <br>
    
    <label for="maxRal">Max Ral:</label>
    <input type="text" id="maxRal" name="maxRal" value="<%= jobOffer.getMaxRal() %>"> <br>
    
    <label for="idContractType">ID Contract Type:</label>
   <input  readonly type="number" name="contractType.idContractType" value="<%= jobOffer.getContractType().getIdContractType() %>">
    
    <button type="submit">Update</button>

</form>
</div>
</body>
</html>
