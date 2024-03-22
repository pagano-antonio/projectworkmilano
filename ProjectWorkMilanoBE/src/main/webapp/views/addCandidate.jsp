<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Candidate"%>
<%@ page import="com.ctr.CandidateCtr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD CANDIDATE</title>
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
 H2 {
  position: relative; 
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid black;
  padding: 8px;
  text-align: left;
}
th {
  background-color: #f2f2f2;
}

a {
  color: black; /* colore del testo */
  text-decoration: underline; /* rimuove il sottolineato di default */
  transition: color 0.3s ease;
  border-radius: 10px; /* animazione del cambio di colore */
}

a:hover {
  color: white;
  background-color: #f7308c; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
<div class="container">
<h1>ADD NEW CANDIDATE</h1>
    <form action="${pageContext.request.contextPath}/candidate/addCandidate" method="post">
    
        <h2>Insert informations here:</h2>             
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"> <br>
        
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname"> <br>
        
        <label for="birthday">Birthday:</label>
        <input type="date" id="birthday" name="birthday"> <br>
        
        <label for="birthPlace">Birth Place:</label>
        <input type="text" id="birthPlace" name="birthPlace"> <br>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address"> <br>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city"> <br>
        
        <label for="email">Email:</label>
        <input type="text" id="email" name="email"> <br>
        
        <label for="phone">Phone:</label>
        <input type="number" id="phone" name="phone"> <br> 
    
        <button type="submit">ADD</button>
    
    </form>
    </div>
</body>
</html>
