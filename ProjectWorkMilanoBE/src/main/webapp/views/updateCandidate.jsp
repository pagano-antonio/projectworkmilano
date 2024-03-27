<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
    <%@ page import="com.model.Candidate"%>
    <%@ page import="com.ctr.CandidateCtr"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Candidate</title>
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
     <h1>Update Candidate:</h1>
     <h2> Insert data here</h2>
     
<% Candidate candidate = (Candidate) request.getAttribute("candidate"); %>
    <form action="${pageContext.request.contextPath}/candidate/updateCandidate1" method="post">
    
        <h2>Insert data here:</h2>
        
        <label for="idCandidate"><strong>Id Candidate:</strong></label>
         <input readonly type="number" id="idCandidate" name="idCandidate" value="<%= candidate.getIdCandidate() %>"> <br>
         
        <label for="name"><strong>Name:</strong></label>
        <input type="text" id="name" name="name" value="<%= candidate.getName() %>"> <br>
        
        <label for="surname"><strong>Surname:</strong></label>
        <input type="text" id="surname" name="surname" value="<%= candidate.getSurname() %>"> <br>
        
        <label for="birthday"><strong>Birthday:</strong></label>
        <input type="date" id="birthday" name="birthday" value="<%= candidate.getBirthday() %>"> <br>
        
        <label for="birthPlace"><strong>Birth Place:</strong></label>
        <input type="text" id="birthPlace" name="birthPlace" value="<%= candidate.getBirthPlace() %>"> <br>
        
        <label for="address"><strong>Address:</strong></label>
        <input type="text" id="address" name="address" value="<%= candidate.getAddress() %>"> <br>
        
        <label for="city"><strong>City:</strong></label>
        <input type="text" id="city" name="city" value="<%= candidate.getCity() %>"> <br>
        
        <label for="email"><strong>Email:</strong></label>
        <input type="text" id="email" name="email" value="<%= candidate.getEmail() %>"> <br>
        
        <label for="phone"><strong>Phone:</strong></label>
        <input type="number" id="phone" name="phone" value="<%= candidate.getPhone() %>"> <br>
 
        <button type="submit"><strong>UPDATE</strong></button>
    
    </form>
    </div>
</body>
</html>
