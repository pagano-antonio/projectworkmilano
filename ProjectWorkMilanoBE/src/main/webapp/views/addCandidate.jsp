<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Candidate"%>
<%@ page import="com.ctr.CandidateCtr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Candidate</title>
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
button[type="submit"] {
        margin-top: 20px; /* Adjust as needed */
        margin-left:50px;
        width: 150px; /* Adjust as needed */
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
   br {
    margin-bottom: 10px; /* Spazio sotto il break */
  }
</style>
</head>
<body>
<div class="container">
<h1>ADD NEW CANDIDATE</h1>
   <h2>Insert data here:</h2>    
    <form action="${pageContext.request.contextPath}/candidate/addCandidate" method="post">
          
 <br>    
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"> <br>
<br>
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname"> <br>
<br>
        <label for="birthday">Birthday:</label>
        <input type="date" id="birthday" name="birthday"> <br>
<br>
        <label for="birthPlace">Birth Place:</label>
        <input type="text" id="birthPlace" name="birthPlace"> <br>
<br>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address"> <br>
<br>
        <label for="city">City:</label>
        <input type="text" id="city" name="city"> <br>
<br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email"> <br>
<br>
        <label for="phone">Phone:</label>
        <input type="number" id="phone" name="phone"> <br> 
<br>
        <button type="submit"><strong>ADD</strong></button>
<br>
    </form>
    </div>
</body>
</html>
