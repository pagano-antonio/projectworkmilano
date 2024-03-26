<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Success </title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 8px;
    margin: 8px;
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

        justify-content: center;      
        align-items: center;
        background: white;
        padding: 1px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
  H1 {
  position: absolute; /* Position relative to .container */
        top: 35%; /* Align at the top */
        left: 50%; /* Center horizontally */
        transform: translateX(-50%); /* Adjust horizontally */
        font-family: Century Gothic;
        background: white;
        border-radius: 10px;
        z-index: 9999;
    }
}
 H2 {
 position: absolute; /* Position relative to .container */
        top: 45%; /* Align at the top */
        left: 50%; /* Center horizontally */
        transform: translateX(-50%); /* Adjust horizontally */
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
a {
    color:black;
   position: absolute; /* Position relative to .container */
        top: 65%; /* Align at the top */
        left: 50%; /* Center horizontally */
        transform: translateX(-50%); /* Adjust horizontally */
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  padding: 15px;
}
a:hover {
  color: white;
  background-color: black; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
<h1>UPDATE SUCCESS</h1>
<h2>The action has been successful!</h2>
<a href="${pageContext.request.contextPath}/home">Go Home</a>
</body>
</html>